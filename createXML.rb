require 'builder'

x = Builder::XmlMarkup.new( :target => $stdout, :indent => 1, :verson => '1.0', :encoding => 'utf-8')

x.testcase {  
  x.dataproviders("id" => "getRootCategories"){  
    x.String("isbn" => "0672310001"){  
    x.title "Programming Ruby"   
    x.author "Yukihiro "  
    x.description "Programming Ruby - The Pragmatic Programmer's Guide"  
    }  
  }  
}
