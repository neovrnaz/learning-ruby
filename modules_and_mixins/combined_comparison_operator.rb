
books = ["Demon Haunted World", "A Short History of Nearly Everything", "Basic Economics", "The Rational Optimist"]

# This will sort the books by alphabetical order. The difference between just using
# sort and the spaceship operator is that you can switch a and b to change if a or z comes first
p books.sort! { |a,b| a <=> b }
