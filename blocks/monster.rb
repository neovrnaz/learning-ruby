# frozen_string_literal: true

# This monster is cool
class Monster
  # attr_reader makes it so you don't have to type @ sign inside of a class
  attr_reader :name, :actions
  def initialize(name)
    @name = name
    @actions = {
      screams: 0,
      run: 0,
      scares: 0

    }
  end

  def speak(&block)
    print "#{name} says... "
    block.call
  end

  def scream(&block)
    actions[:screams] += 1
    print "#{name} screams!"
    block.call
  end

  def scare(&block)
    actions[:scares] += 1
    print "#{name} is scaring you!"
    block.call
  end

  def run(&block)
    actions[:run] += 1
    print "#{name} is running fast!"
    block.call
  end

  def print_scoreboard
    puts '-' * 40
    puts "#{name} scoreboard:"
    puts '-' * 40
    puts "- Screams: #{actions[:screams]}"
    puts "- Scares: #{actions[:scares]}"
    puts "- Runs: #{actions[:run]}"
  end
end

monster = Monster.new('Silly Monster')
monster.speak { puts 'Hello, welcome to my house.' }

monster.scream do
  puts ' RRRRRR'
end
monster.scare do
  puts ' BOO!'
end
monster.run do
  puts ' Click-clack'
end

monster.print_scoreboard
