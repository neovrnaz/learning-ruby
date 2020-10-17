# Code of passing a block to a method

def test(&b)
  3.times { b.call }
end

test do
  puts "Hello"
end