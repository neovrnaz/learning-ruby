class FruitV1

  # Reader
  def set_kind(k)
    @kind = k
  end

  # Writer
  def get_kind
    @kind
  end
end

f1 = FruitV1.new
f1.set_kind("Peach")
p f1.get_kind
