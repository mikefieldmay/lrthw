numbers = []

for number in (0..6)
  puts "The number is: #{number}"
  numbers << number

  puts "The numbers: "
  for number in numbers
    puts number
  end
end
