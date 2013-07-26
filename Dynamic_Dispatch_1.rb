class TestMethod
   def self.d_method(x)
    define_method "#{x}" do
      puts "I'm #{x}"
    end
   end
end

TestMethod.d_method("b")
test=TestMethod.new
test.b
