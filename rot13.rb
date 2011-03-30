def make_rot13_line(a_line)
  rot13_line = ''
  a_line.downcase.each_byte do |c|
    if c >= 97 && c <= 122
      c = c + 13
      if c >= 122
        c = (c - 26)
      end
    end
    rot13_line << c.chr
  end
  rot13_line
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
