class FruitAccessorV1
  attr_accessor :condition, :kind

  def inspect
    "A " + @condition + " " + @kind
  end

  def time_passes
    @condition = "Rotting"
  end

  def switch_fruit=(k)
    @kind = k
  end
end

f1 = FruitAccessorV1.new
f1.condition = "Ripe"
f1.time_passes
f1.kind = "Banana"
f1.switch_fruit = "Orange"
p f1

f2 = FruitAccessorV1.new
f2.kind = "Pineapple"

# Error: No implicit conversion of nil into String
# @condition & @kind has not been assigned to f2
p f2
