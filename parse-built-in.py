def read_file():
  lines = []
  with open("built-in.txt") as f:
    lines = f.readlines()
  return lines

def default_proc_output(name, inputs, outputs):
  return "%s: %s -- %s\n" % (name,
                           ",".join(inputs),
                           ",".join(outputs))
    
numerical_subtypes = ['rational', 'non-neg-integer', 'integer', 'pos-integer', 'radix'] # radix is a bit of a hack
def fix_type(token):
    global numerical_subtypes
    if len(token) > 5 and token[0:5] == 'type:':
      return token
    elif token in numerical_subtypes:
        return "type:number"
    elif token == "#f":
        return "type:false"
    elif token == "#t":
        return "type:true"
    elif token == "_|_":
        return "type:none"
    else:
        return "type:%s" % token

def parse_line(line, make_output):
  if line[0] in ['#', '-', '\n']:
    return None
  line = line.strip().split(" ")
  proc_name, proc_inputs, proc_outputs = None, [], []
  state = 'NEED_NAME'
  for token in line:
    if token == '' or token == '|':
      pass
    elif token[0] == '#' and not (token == '#f' or token == '#t'):
      break
    elif state == 'NEED_NAME':
      proc_name = token
      state = 'INPUTS'
    elif token == '->':
      state = 'OUTPUTS'
    elif state == 'INPUTS':
      if token[0] == '[': ## optional inputs
        token = token[1:-1]
      elif token == '...': ## that listy-thing
        token = proc_inputs[-1]
      proc_inputs.append(fix_type(token))
    elif state == 'OUTPUTS':
      proc_outputs.append(fix_type(token))
  return make_output(proc_name, proc_inputs, proc_outputs)

def parse_all(lines, 
              output_file='built-in-output.txt', 
              make_output = default_proc_output):
  with open(output_file, "w") as f:
    for line in lines:
      if line == '--- end ---\n':
        break
      parsed = parse_line(line, make_output)
      if parsed:
        f.write(parsed)

def write_def_handlers():
    lines = read_file()
    output_file = 'primitive-def-handlers.scm'


    def make_output(name, inputs, outputs):
        # TODO look to see if we have such a cell in a global thing
        # Otherwise create new cell
        return """
(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda (cell)
      (add-content cell (-> %s %s))))
  (eq-primitive? %s))
        """ % (" ".join(inputs), " ".join(outputs), name)

    parse_all(lines, output_file, make_output)

write_def_handlers()
