puts "I'm going to raise an exception"
raise "Uh oh you done something wrong"
puts "this won't get printed"
begin
ensure puts "I'll get printed though"
end 
