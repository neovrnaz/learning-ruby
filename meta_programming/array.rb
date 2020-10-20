class Array
  def self.add_new_method(name, &logic)
    Array.send(:define_method, name) do |*args|
      puts self.inspect
      logic.call(self, *args)
    end
  end
end

Array.add_new_method("prepend_array") do |me, x|
  me.each { |e| puts "#{x} #{e} " }
end

%w[cat dog bird].prepend_array("Animal:")
