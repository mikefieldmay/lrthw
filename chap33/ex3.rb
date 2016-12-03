def while_loop(x, y)
  i = 0
  numbers = []
  while i < x.to_i
    puts "At the top i is #{i}"
    numbers.push(i)
    i += y
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "
  numbers.each {|num| puts num }
end

while_loop(10, 5)
