# p fluid = 30
# p fluid = 31
# p Solid = 32
# p Solid = 33

class ConstClass
  C1 = 101
  C2 = 102
  C3 = 103
  def show
    print C1," ",C2," ",C3,"\n"
  end
end

# C1 # Uninitialized constant

p ConstClass::C1

ConstClass.new.show


module ConstModule
  C1 = 101
  C2 = 102
  C3 = 103
  def showConstants
    print C1," ",C2," ",C3,"\n"
  end
end

# C1 # Uninitialized constant

include ConstModule

p C1
showConstants

C1=99 # Not good

C1

p ConstModule::C1
