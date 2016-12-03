puts "How many cars?"
cars = $stdin.gets.chomp.to_i

puts "How many trucks?"
trucks = $stdin.gets.chomp.to_i

puts "How many people?"
people = $stdin.gets.chomp.to_i

if people > trucks && trucks > cars
  puts "There's lots of people and lots of trucks."
elsif people > trucks && trucks < cars
  puts "There are lots of people and lots of cars."
elsif people < trucks && trucks > cars
  puts "There are few people and many trucks?"
else
  puts "I've lost track of this. It seems very complicated now"
end
