require 'test_helper'

class CreateIcTypeTest <ActionDispatch::IntegrationTest
  setup do
    @IcType = ic_types(:one)
      
    puts "ic_type_url #{ic_type_url(ic_types.last.id)}"
    puts "ic_types_url #{ic_types_url}"
  end


    test "get new ic_type form and create ic_type" do
        puts "new_ic_type_url #{new_ic_type_url}"
        get new_ic_type_url

        assert_template "ic_types/new" # 'categories/new'

        assert_difference 'IcType.count', 1 do
            post ic_types_url, params: { ic_type: { name: @IcType.name } } 
        end
        assert_redirected_to ic_type_url(IcType.last) #assert_template 'categories/index'

        assert_match @IcType.name , response.body

    end

end