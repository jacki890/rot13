in_file = File.open("/home/jacki/apprentice_work/rot13/original.txt", "r")

lines = in_file.readlines

in_file.close

out_file = File.open("/home/jacki/apprentice_work/rot13/rot13ed.txt", "w")
out_file.close

# read each line into an array. Once EOF, write all into output file.
# alphabet = ("a".."z").to_a


