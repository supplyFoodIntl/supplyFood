require 'test_helper'

class CreateIcTypeTest <ActionDispatch::IntegrationTest
  def setup
    #generata e random name
    @ic_type = ic_types(:one)
    puts "ic_type_url #{ic_type_url(ic_types.last.id)}"
    puts "ic_types_url #{ic_types_url}"
      
    puts "ic_type_path #{ic_type_path(ic_types.last.id)}"
    puts "ic_types_path #{ic_types_path}"
  end


  test "get new ic_type form and create ic_type" do
        puts "new_ic_type_url #{new_ic_type_url}"
        get new_ic_type_path

        assert_template "ic_types/new" 
        puts "IcType.count #{IcType.count}"
        assert_difference 'IcType.count', 1 do
            post ic_types_url, params: { ic_type: { name: rand(10000).to_s } } 
            puts "IcType.count #{IcType.count}"
        end
        assert_redirected_to ic_types_path(IcType.last) #assert_template 

        assert_match @IcType.name , response.body

    end

end
