name = 'Zed A. Shaw'
age = 35
height = 74 # Inches
weight = 180 # Lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

height_in_cm = 74 * 2.54
weight_in_kg = 180 * 0.45

puts "Lets talk about#{name}."
puts "He's #{height} inches tall, or #{height_in_cm}cm tall."
puts "He's #{weight} pounds heavy or #{weight_in_kg} kilograms heavy."
puts "Actually he's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

puts "If I add #{age}, #{height}, #{weight}, #{weight_in_kg} and #{height_in_cm} I get #{height + age + weight + height_in_cm + weight_in_kg}"
