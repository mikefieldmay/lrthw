BEGIN {puts "Hi there!"}

def cat_leg_count(cats)
  legs = cats * 4
  puts legs
end

alias cat_legs cat_leg_count

cat_leg_count(8)
cat_legs(2)

puts "cat leg count is great" and  "So is cat legs"
puts "Will this print?" or "Or will this one?"

print "Do you think the cat leg counter is a useful tool? "
choice = $stdin.gets.chomp

case choice.downcase
when "yes", "yeah", "y"
  puts "Thank you very much."
when "no", "nah", "nope"
  puts "You know nothing Jon Snow!"
else
  puts "Not quite sure what you meant there"
end

END {puts "Bubye now!"}
