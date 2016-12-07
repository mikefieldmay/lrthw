rand_names = ['bob', 'ben', 'bill', 'mike']

names = rand_names.map do
  word = rand_names.pop
end

print names
print names * 2
