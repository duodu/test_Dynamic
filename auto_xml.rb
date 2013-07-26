require 'builder'

x = Builder::XmlMarkup.new( :target => $stdout, :indent => 1, :verson => '1.0', :encoding => 'utf-8')

interfacename = "queryMdseSkus"
params_data = [{ :string => "mdseCode" }]
#expect_data =  x.id  "response_ViewCategoryVO_id" 

x.testcase {
  x.interfaces {
    x.interface("id" => "cata_#{interfacename}") {
      x.params("provider" => "d_#{interfacename}")
      x.validators("provider" => "v_#{interfacename}")
    }
  }
  x.dataproviders("id" => "d_#{interfacename}") {
    x.dataprovider {
      params_data.each do |p|
        p.each do |k,v|
          x.string v if k.to_s == "string"
          x.long v if k.to_s == "long"
          x.int v if k.to_s == "int"
        end
      end
    }
  }
  x.validatorProviders("id" => "v_#{interfacename}") {
    x.aliases {
      x.alias("name" => "v_Response", "type" => "path_#{interfacename}")
    }
    x.validatorProvider {
      x.validator("type" => "object") {
        x.expected {
          x.list {
            x.v_Response {
              x.skuId  "response_QueryMdseSkuVO_skuId"
            }
          }
        }
      }
    }
  }
}
