rainbow = %w{ Red Orange Yellow Green Blue Purple Indigo Violet}
n = 0
rainbow.each do |color|
  n += 1
  puts "#{color} is color number #{n} of the rainbow"
end
