def make_change money, coins = [50,20,10,5,1]
  result = if money == 0
    []
  elsif coins.include? money
    [money]
  else
    coins_count = []
    valid_coins = coins.select{ |coin| coin < money } #小于
    remainder = money

    valid_coins.each do |coin|

      num = remainder/coin
      remainder = remainder % coin

      next if num == 0 #余数小于当前的匹配值 进行下一论匹配
      num.times{ coins_count << coin }
      break if remainder == 0 || remainder < valid_coins.min #匹配完毕或者没有合适结果

    end
  end
    coins_count
end

puts make_change 14,[10,7,1]
