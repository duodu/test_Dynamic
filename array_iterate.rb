class Array_iterate
  def initialize array=[], num
    @array = array
    @num = num
    @output_array = Array.new
    @org_array = array
  end
  def iterate
    num = @num % @array.count
    num = @array.count if num == 0
    k = 1
    for i in 0 .. ( @org_array.count - 1 )
      if k == num
        @output_array << @array[i]
        @array.delete_at(i)
        k = 1
        next
      end
      k += 1
    end
    iterate if @array.count != 0
    return @output_array
  end
  def new_array
    @array
  end
  def org_array
    @org_array
  end
end

test_array = Array_iterate.new [2,1,3,4,9,10,11], 3
print "before sort #{test_array.org_array} \r\n"
puts "----------------"
print "after sort #{test_array.iterate} \r\n"
puts "----------------"
puts test_array.new_array
