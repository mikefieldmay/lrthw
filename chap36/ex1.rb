require_relative 'start.rb'
include StartOfQuest

def dead(why)
  puts why, "Good job!"
  exit(0)
end

def door_one
  dead("You fell into a bottomless pit.")
end

def door_two
  dead("You've completed the quest. Take your treasures and head home!")
end

def maiden_room
  puts "There is a room with 2 doors and a beautiful maiden singing."
  puts "Both doors are locked."
  maiden_helpful = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice =~ /compliment/ && !maiden_helpful
      puts "The maiden has unlocked the doors for you."
      puts "Go through Door 1 or Door 2?"
      maiden_helpful = true
    elsif choice =~ /compliment/ && maiden_helpful
      puts dead("The maiden feels objectified. You get embarrased and leave.")
    elsif choice =~ /insult/
      dead("You have enraged the maiden and she has chopped your head off.")
    elsif choice.downcase == "door 1" && maiden_helpful
      door_one
    elsif choice.downcase == "door 2" && maiden_helpful
      door_two
    else
      puts "I'm not sure what that means!"
    end
  end
end

start
