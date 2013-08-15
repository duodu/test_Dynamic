v1 = 1
class MyClass
  v2 = 2
  local_variables
  def my_method
    v3 = 3
    local_variables
  end
  local_variables
end

obj = MyClass.new
puts "my_method's variables is #{obj.my_method}"
puts "my_method's variables is #{obj.my_method}"
puts local_variables