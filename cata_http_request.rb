 #encoding:utf-8
puts "\"<testcase>\""
puts "\"<script>\""
puts "\"<after>\""
puts "\"<sql>\""
puts "\"truncate table cata_base_property\""
puts "\"</sql>\""
puts "\"<sql>\""
puts "\"truncate table cata_base_property_val\""
puts "\"</sql>\""
puts "\"<sql>truncate table cata_sys_category\""
puts "\"</sql>\""
puts "\"<sql>\""
puts "\"truncate table cata_ref_syscategory_baseprop\""
puts "\"</sql>\""
puts "\"<sql>\""
puts "\"truncate table cata_mdse\""
puts "\"</sql>\""
puts "\"</after>\""
puts "\"</script>\""
puts "\"<dataProviders id=\\\"addBaseProps-20130704-input\\\">\""
puts "\"<aliases>\""
puts "\"<alias name=\\\"addBasePropRequest\\\" type=\\\"com.handpay.core.basic.catalogue.property.AddBasePropRequest\\\"/>\""
puts "\"<alias name=\\\"propertyValueVO\\\" type=\\\"com.handpay.core.basic.catalogue.property.PropertyValueVO\\\"/>\""
puts "\"</aliases>\""
puts "\"<pattern date=\\\"yyyyMMddHHmmss\\\"/>\""
puts "\"<dataProvider id=\\\"1\\\">\""
puts "\"<addBasePropRequest>\""
puts "\"<name>\""
puts "\"风格\""
puts "\"</name>\""
puts "\"<values>\""
puts "\"<propertyValueVO>\""
puts "\"<value>\""
puts "\"欧美风\""
puts "\"</value>\""
puts "\"<sortValue>\""
puts "\"0\""
puts "\"</sortValue>\""
puts "\"</propertyValueVO>\""
puts "\"</values>\""
puts "\"</addBasePropRequest>\""
puts "\"</dataProvider>\""
puts "\"</dataProviders>\""
puts "\"<validatorProviders id=\\\"addBaseProps-20130704-result\\\">\""
puts "\"<validatorProvider>\""
puts "\"<!--1--><!--<validator type=\\\"object\\\"><expected><long>1000</long></expected></validator>-->\""
puts "\"<validator type=\\\"database\\\">\""
puts "\"<sql>\""
puts "\"select c.NAME from  appl.CATA_BASE_PROPERTY  c where c.ID=(select max(id) from appl.CATA_BASE_PROPERTY)\""
puts "\"</sql>\""
puts "\"<expected>\""
puts "\"NAME=风格\""
puts "\"</expected>\""
puts "\"</validator>\""
puts "\"</validatorProvider>\""
puts "\"</validatorProviders>\""
puts "\"<interfaces>\""
puts "\"<interface id=\\\"addBaseProps-20130704\\\">\""
puts "\"<params provider=\\\"addBaseProps-20130704-input\\\"/>\""
puts "\"<validators provider=\\\"addBaseProps-20130704-result\\\"/>\""
puts "\"</interface>\""
puts "\"</interfaces>\""
puts "\"</testcase>\""