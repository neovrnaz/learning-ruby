class String
  def my_method(*args)
  end
  def self.add_new_method(name, &logic)
    send(:define_method, name) do |*params|
      puts "You created a method named #{name}, and you are in it right now!"
      logic.call(*params)
    end
  end
end

String.add_new_method("add_numbers") do |a, b, c, d, e|
  puts "\n"
  puts "Here is our logic:"
  puts a + b + c + d + e
end

"string".add_numbers(1, 2, 3, 4, 5)
