module Fetcher
  # Methods inside of this module will be "mixed" in
  # to any class that that includes the "Fetcher" class

  # self.included runs automatically when a module is
  # included in a class
  #
  # The argument that is passed into the included method
  # is the class that the module is included in
  def self.included(base)
    attr_accessor :fetch_count
    puts "#{base} has been included"
  end

  def fetch(item)
    # If fetch_count has not been accessed to, we set it
    # to 0
    @fetch_count ||= 0
    @fetch_count += 1
    print "#{@name}, Fetch count: [#{@fetch_count}] I'll bring the #{item} back"
  end
end

class Dog
  include Fetcher

  def initialize(name)
    @name = name
  end
end

class Cat
  include Fetcher

  def initialize(name)
    @name = name
  end
end

dog = Dog.new("Aria")

puts "\n"

puts dog.fetch("Ball")
puts dog.fetch("Ball")

puts "\n"

cat = Cat.new("Pixie")
puts cat.fetch("Laser pointer")
