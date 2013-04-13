def read_file():
  lines = []
  with open("built-in.txt") as f:
    lines = f.readlines()
  return lines

def parse_line(line):
  numerical_subtypes = ['rational', 'non-neg-integer', 'integer', 'pos-integer']
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
      elif token in numerical_subtypes:
        token = 'number'
      proc_inputs.append(token)
    elif state == 'OUTPUTS':
      if token in numerical_subtypes: 
        token = 'number'
      proc_outputs.append(token)
  return "%s: %s -- %s\n" % (proc_name,
                           ",".join(proc_inputs),
                           ",".join(proc_outputs))
      
    

def parse_all(lines):
  with open("built-in-output.txt", "w") as f:
    for line in lines:
      if line == '--- end ---\n':
        break
      parsed = parse_line(line)
      if parsed:
        f.write(parsed)

parse_all(read_file())
