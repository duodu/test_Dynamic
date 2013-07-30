def make_change money,coins=[100, 50, 20, 10, 5, 1 ]
  return money if (coins.include? money or money == 0)
  remain = money
  result = {}
  coins.each do |coin|
    if remain >= coin
      count = remain / coin
      remain = remain % coin
      result[coin] = count
    end
  end
  result
end

puts make_change 14,[10,7,1]
