# Takes the filename as an argument when running the file
filename = ARGV.first
# Sets the variable txt to opening the filename
txt = open(filename)
# Puts the filename and passes.read to the txt variable
puts "Here's your file #{filename}:"
print txt.read
