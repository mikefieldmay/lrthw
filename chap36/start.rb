module StartOfQuest
  def start
  puts "You stand in front of a large door"
  puts "A goblin jumps out and he asks you a riddle: "
  puts "\"If a blue house is blue, and a red house is red, what color is a green house?\""
  puts "You have three chances."
  n = 0

  until n == 3
    print "> "
    choice = $stdin.gets.chomp

    if choice.downcase == "see through"
      puts "Correct. The door opens and you enter."
      maiden_room
    else
      puts "I'm afraid that's incorrect"
      n +=1
      puts "You have #{3 - n} chances left."
    end
  end
dead("You ran out of chances so the goblin ate you.")
end
end
