def make_rot13_line(a_line)
  variable = ''
  a_line.each_byte do |c|
    variable << c + 13
  end
  variable
end

def rot13_one_char(char)
  char
end

in_file = File.open("/Users/jackikeys/Dropbox/apprentice_work/rot13/original.txt", "r")

lines = in_file.readlines

in_file.close

out_file = File.open("/Users/jackikeys/Dropbox/apprentice_work/rot13/output.txt", "w")

lines.each do |line|
  rot13_line = make_rot13_line(line)
  out_file.write(rot13_line)
end

out_file.close
