class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    # number声明在3.times块内部时，最后一行puts...会认为#{number}是一个方法，然后又去调用method_missing方法，如此反复死循环至堆栈溢出。
    number = 0
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end
    puts "#{person} got a #{number}"
  end
end

number_of = Roulette.new
number_of.chenjun

class Test
  def test_rand
    3.times do 
      number = rand(10) + 1
      puts number
    end
    #number作用域到此为止，后面的number会报找不到方法的异常
    puts number
  end
end

test = Test.new
test.test_rand