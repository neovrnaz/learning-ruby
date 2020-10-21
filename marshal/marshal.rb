# Marshalling allows you to transform the memory representation
# of an object. You will want to use this when you want to
# move parts of a program to another

class Player
  attr_accessor :name, :progress

  def initialize(name)
    @name = name
  end
end
