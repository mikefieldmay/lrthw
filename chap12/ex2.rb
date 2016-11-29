print "Hi there, how much money would you like to give me? "
money = gets.chomp.to_f
money_back = money / 10
puts "Okay, you can have £#{money_back} back. I'm so kind"
