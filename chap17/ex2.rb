from_file, to_file = ARGV

puts "Copying the file"

in_file = open(from_file); indata = in_file.read

out_file = open(to_file, 'w'); out_file.write(indata)

puts "Alright, all done."

out_file.close; in_file.close