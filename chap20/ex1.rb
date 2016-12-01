input_file = ARGV.first
# performs a read on the file
def print_all(f)
  puts f.read
end
# seek(0) looks for 0 bytes
def rewind(f)
  f.seek(0)
end
# takes a line number and
# reads the file to a new line (gets) and outputs with chomp
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end
# opens the input file
current_file = open(input_file)

puts "First let's print the whole file:\n"

print_all(current_file)

puts "Now lets rewind, kind of like a tape."
# sets bytes back to 0
rewind(current_file)

puts "Lets print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)
