capitals = {
  'Wales' => 'Cardiff',
  'England' => 'London',
  'Scotland' => 'Edinburgh',
  'Ireland' => 'Belfast'
}

teams = {
  'Cardiff' => 'Farters',
  'London' => 'Poo Brains',
  'Belfast' => 'Love Triangles',
  'Edinburgh' => 'Butt Heads'
}

capitals.each do |country, capital|
  team = teams[capital]
  puts "#{country}\'s capital is #{capital} and their team is the #{team}"
end
