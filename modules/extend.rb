module Tracking
  def instances
    @instances ||= []
  end
end

class Customer
  include Tracking
  attr_accessor :name

  def initialize
    @name = name
  end

  def create(name)
    puts name
  end

  def to_s
    "[#{@name}]"
  end
end

puts "Custom.instaces: %s" % Customer.instances.inspect
