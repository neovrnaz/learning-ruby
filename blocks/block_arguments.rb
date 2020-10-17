# frozen_string_literal: true

def find_name(prompt, &block)
  if block_given?
    print prompt + ': '
    name = gets.chomp
    print 'Age: '
    age = gets.chomp
    yield name, age
    name
  else
    puts 'No block was given'
  end
end

name = find_name('Enter your name') do |n, a|
  puts "Hi, #{n}! You are #{a} years old!"
end

puts "find_name: #{name}"
