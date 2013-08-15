c_a = 1
c_b = 1
a = 1
b = 1
for i in 1 .. 27
  if c_a > 3 
    c_a = 1
    a += 1
  end
  if a > 3
    a = 1
  end
  if c_b > 9
    c_b = 1
    b += 1
  end
  if b > 3
    b = 1
  end
  k = i % 3
  if k == 0
    k = 3
  end
  puts "
\"<skuProps>\" //<!--#{i}-->
    \"<SkuPropValue>\"
          \"<name>addMdse_sku_1</name>\"
          \"<value>addMdse_sku_1_#{k}</value>\"
    \"<\/SkuPropValue>\"
    \"<SkuPropValue>\"
          \"<name>addMdse_sku_2</name>\"
          \"<value>addMdse_sku_2_#{a}</value>\"
    \"</SkuPropValue>\"
    \"<SkuPropValue>\"
          \"<name>addMdse_sku_3</name>\"
          \"<value>addMdse_sku_3_#{b}</value>\"
    \"</SkuPropValue>\"
\"</skuProps>\"" 
  
  c_a += 1
  c_b += 1
end


