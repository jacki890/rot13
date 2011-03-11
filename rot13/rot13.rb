# creating a method
def make_rot13_line(a_line)
  a_line
end

# open the external file in read mode.
in_file = File.open("/home/jacki/apprentice_work/rot13/original.txt", "r")

# read the lines of the external file into an array called "lines"
lines = in_file.readlines
# added puts to see what lines is at this point
puts lines

# close the file
in_file.close

# open a file for the output in write mode, and erase any previous data in the file.
out_file = File.open("/home/jacki/apprentice_work/rot13/rot13ed.txt", "w")

# for each item in the lines array, write the array item (line) to the output file
lines.each do |line|
  rot13_line = make_rot13_line(line)
# adding this puts to see exactly what rot13_line is at this point
# puts rot13_line
  out_file.write(rot13_line)
end

#close the output file
out_file.close

# NEXT: read each line into an array. Once EOF, write all into output file.

# alphabet = ("a".."z").to_a


