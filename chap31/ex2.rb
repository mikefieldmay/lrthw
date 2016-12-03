puts "Medusa approaches. Fight or Run?"
print "> "
choice = $stdin.gets.chomp.downcase

if choice == "fight"
  puts "How would you like to fight the monster?"
  puts "1. Stare the beast in the eyes to try and intimidate it"
  puts "2. Duck and roll left."
  puts "3. Jump and roll right."
  print "> "
  first_move = $stdin.gets.chomp

  if first_move == "1"
    puts "You are turned to stone. Game over!"
  elsif first_move == "2"
    puts "You are toppled over as the beast sweeps your legs and crushes you with her tail. Game over!"
  elsif first_move == "3"
    puts "You jump over the beasts tail sweep and roll to her left."
    puts "You see a conviniently placed mirror at your feet. Do you?"
    puts "1. Admire yourself."
    puts "2. Use the mirror to reflect the beasts image back at her."
    print "> "
    second_move = $stdin.gets.chomp

    if second_move == "1"
      puts "My god you're handsome, but very stupid. Medusa kills you. Game over!"
    elsif second_move == "2"
      puts "Wow, you did the obvious thing. Good job. Take the head home as a trophy and become a legend!"
    else
      puts "Not sure what choice that is, so GAME OVER!"
    end

  else puts
    puts "Not sure what choice that is, so GAME OVER!"
  end

elsif choice == "run"
  puts "You run home terrified. What do you do next?"
  puts "1. Confess the truth to the people of your village."
  puts "2. Make a Medusa head out of papier mache' and pretend you slayed the beast."
  print "> "
  run_away = $stdin.gets.chomp

  if run_away == "1"
    puts "People lose their respect for you and you live a long and quiet life."
  elsif run_away == "2"
    puts "Poets write songs of your glorius victory, Medusa hears these songs, gets angry and comes and destroys your village."
  else "Not sure what that choice is. So we'll just say Game Over!"
  end

elsif choice == "talk"
  puts "You try talking to Medusa and realise she's actually pretty cool. You guys hang out once a week to eat popcorn and watch movies."

else
  puts "You're dithering gets you killed. Game Over!"
end
