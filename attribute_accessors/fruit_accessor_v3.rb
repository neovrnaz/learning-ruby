class FruitAccessorV3
  attr_accessor :condition, :kind

  # The initialize method makes sure that instance variables
  # always get initialized
  #
  # Now that we have an initialize method, "f2" has something
  # to listen to

  # If "apple" is removed here, "f2" will generate an error
  # because it wouldn't have a default value
  def initialize( k="apple" )
    @kind = k
    @condition = 'ripe'
  end

  git branch -M main

  git push -u origin main

  def inspect
    "a " + @condition + " " + @kind
  end

  def time_passes
    @condition = "rotting"
  end

  def switch_fruit=(k)
    @kind = k
  end
end

# This argument, "k" is delivered to initialize
f1 = FruitAccessorV3.new "mango"
f1.condition = "ripe"
f1.time_passes
p f1

f2 = FruitAccessorV3.new
