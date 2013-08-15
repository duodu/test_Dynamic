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
                \"<QueryMdseSkuVO>\"// <!--#{i}-->
                \"<skuId>{skuId}</skuId>\"
                \"<mdseCode>{mdsecode}</mdseCode>\"
                \"<supplierCode>suppliercode29</supplierCode>\"
                \"<supplierMdseCode>suppliermdsecode29</supplierMdseCode>\"
                \"<price>#{i}.000000</price>\"
                \"<totalNum>100</totalNum>\"
                \"<stockNum>100</stockNum>\"
                \"<soldNum>0</soldNum>\"
                \"<unbuyNum>0</unbuyNum>\"
                \"<skuProps>\"
                    \"<SkuPropValue>\"
                        \"<propName>sku_name_1</propName>\"
                        \"<propValue>sku_name_1_#{k}</propValue>\"
                    \"</SkuPropValue>\"
                    \"<SkuPropValue>\"
                        \"<propName>sku_name_2</propName>\"
                        \"<propValue>sku_name_2_#{a}</propValue>\"
                    \"</SkuPropValue>\"
                    \"<SkuPropValue>\"
                        \"<propName>sku_name_3</propName>\"
                        \"<propValue>sku_name_3_#{b}</propValue>\"
                    \"</SkuPropValue>\"                    
                \"</skuProps>\"
                \"</QueryMdseSkuVO>\""
  c_a += 1
  c_b += 1
  
end
