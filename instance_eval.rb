class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new
obj.instance_eval do
  #self
  puts "puts #{@v}"
end

v = 3
puts obj.instance_eval { @v = v }
puts obj.instance_eval { @v }
