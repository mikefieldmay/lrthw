filename = ARGV.first

puts "Opening the file: "
target = open(filename)
print target.read
target.close
