class Combat
  gothon = 'alive'
  player = 'alive'
  gothon_attack = ['left', 'right']
  attack = ['hit', 'miss', 'miss']

  puts "The Gothon stands in front of you."
  puts "He readies his attack. Do you dodge left or right?"

  choice = $stdin.gets.chomp

  while gothon == 'alive' && player == 'alive'
    if choice == gothon_attack.sample
      puts "You dodged #{choice} but the attack hits you square in the chest"
      puts "You are dead"
      player = 'dead'
    elsif choice != gothon_attack
      puts "You dodged #{choice} and the attack missed. There's an opening"
      puts "so you take a shot"
      shot = attack.sample
      if shot == 'hit'
        puts "You're attack hit the Gothon killing him dead"
        gothon = 'dead'
      elsif shot == 'miss'
        puts "Your shot misses. The Gothon readies his attack. Which way do you dodge?"
        choice = $stdin.gets.chomp
      else
        puts "DOES NOT COMPUTE!"
        choice = $stdin.gets.chomp
      end
    else
      puts "DOES NOT COMPUTE!"
      choice = $stdin.gets.chomp
    end
  end
end

a = Combat.new
