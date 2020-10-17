class FruitV2

  # Writer
  def kind=(k)
    @kind = k
  end

  # Reader
  def kind
    @kind
  end

  def inspect
    "a fruit of the " + @kind + " variety"
  end
end

f1 = FruitV2.new
f1.kind = "Peach"
p f1.kind
p f1
