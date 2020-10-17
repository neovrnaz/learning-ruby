class FruitAccessorV2
  attr_accessor :condition, :kind

  # The initialize method makes sure that instance variables
  # always get initialized
  #
  # Now that we have an initialize method, "f2" has something
  # to listen to

  def initialize
    @kind = 'apple'
    @condition = 'ripe'
  end

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

f1 = FruitAccessorV2.new
f1.condition = "ripe"
f1.time_passes
f1.kind = "banana"
f1.switch_fruit = "orange"
p f1

f2 = FruitAccessorV2.new
f2.kind = "pineapple"

# Error: No implicit conversion of nil into String
# @condition & @kind has not been assigned to f2
p f2
