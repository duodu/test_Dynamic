require 'builder'

x = Builder::XmlMarkup.new( :target => $stdout, :indent => 1, :verson => '1.0', :encoding => 'utf-8')

x.testcase {
  x.interfaces {
    x.interface("id" => "cata_getRootCategories") {
      x.params("provider" => "d_getRootCategories")
      x.validators("provider" => "v_getRootCategories")
    }
  }
  x.dataproviders("id" => "d_getRootCategories") {
    x.dataprovider {
      x.String "params_businessChannel"
      x.String "params_appCode"
    }
  }
  x.validatorProviders("id" => "v_getRootCategories") {
    x.aliases {
      x.alias("name" => "v_getRootCategories_Response", "type" => "path_getRootCategories")
    }
    x.validatorProvider {
      x.validator("type" => "object") {
        x.expected {
          x.list {
            x.v_getRootCategories_Response {
              x.id "response_ViewCategoryVO_id"
            }
          }
        }
      }
    }
  }
}
