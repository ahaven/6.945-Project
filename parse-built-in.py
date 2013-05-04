def read_file():
  lines = []
  with open("built-in.txt") as f:
    lines = f.readlines()
  return lines

def default_proc_output(name, inputs, outputs):
  return "%s: %s -- %s\n" % (name,
                           ",".join(inputs),
                           ",".join(outputs))
    
numerical_subtypes = ['rational', 'non-neg-integer', 'integer', 'pos-integer', 'radix', 'digit'] # radix is a bit of a hack as is digit
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
  if line[0] in ['#', '-', '\n'] and not line[0:2] == '- ':
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
              make_output = default_proc_output,
              beginning=None, ending=None):
  with open(output_file, "w") as f:
    # write the beginning of the file
    if beginning:
      f.write(beginning())

    # write all the lines in the middle
    for line in lines:
      if line == '--- end ---\n':
        break
      parsed = parse_line(line, make_output)
      if parsed:
        f.write(parsed)
    
    # write the ending of the file
    if ending:
      f.write(ending())

def write_def_handlers():
    lines = read_file()
    output_file = 'primitive-def-handlers.scm'

    def make_output(name, inputs, outputs):
        # TODO look to see if we have such a cell in a global thing
        # Otherwise create new cell
        return """
; this here is totally wrong because you should look it up as a func first
(defhandler type-eval
  (lambda (expr env)
    (build-primitive-type-cell expr))
  (eq-primitive? '%s) any?)

(defhandler build-primitive-type-cell
  (get-primitive-cell
    (lambda () (-> %s %s)))
  (eq-primitive? '%s)) 
        """ % (name, " ".join(inputs), " ".join(outputs), name)

    parse_all(lines, output_file, make_output)

def init_primitives():
    lines = read_file()
    output_file = 'init-primitives.scm'

    def beginning():
      return "(define (init-primitives env)"

    def make_output(name, inputs, outputs):
        # TODO look to see if we have such a cell in a global thing
        # Otherwise create new cell
        return """\n
  (define-primitive-func! '%s %s 
    (e:constant (-> %s %s))
    env)""" % \
        (name, name, " ".join(inputs), " ".join(outputs))

    def ending():
      return ")"

    parse_all(lines, output_file, make_output, beginning, ending)

init_primitives()
