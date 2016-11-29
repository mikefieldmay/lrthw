# Takes the filename as an argument when running the file
filename = ARGV.first
# Sets the variable txt to opening the filename
txt = open(filename)
# Puts the filename and passes.read to the txt variable
puts "Here's your file #{filename}:"
print txt.read
txt.close
#Repeats the above
print "Type the file pathname again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
txt_again.close
