class Invoice
# Class method
# A class method can be called on top of the class itself
  def self.print_out
    puts "printed out invoice"
  end

# Instance method
# An instance method has to be instantiated before it
# can be called
  def converted_to_pdf
    puts "Converted to PDF"
  end
end

# If you try calling converted_to_pdf, you will
# get an undefined method error
