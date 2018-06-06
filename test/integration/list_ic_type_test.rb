require 'test_helper'

class ListIcTypeTest <ActionDispatch::IntegrationTest

  def setup
    @IcType = ic_types(:one)
    @IcType2= ic_types(:two)
      
    puts "ic_type_url #{ic_type_url(ic_types.last.id)}"
    puts "ic_types_url #{ic_types_url}"
          puts "ic_type_path #{ic_type_path(ic_types.last.id)}"
    puts "ic_types_path #{ic_types_path}"
  end
    
    
    test "should show ic_type listing" do

        get ic_types_path

        assert_template 'ic_types/index'
        #puts to show the response of the get
        #puts (response.body)
        
        assert_select "a[href=?]", ic_type_path(@IcType)#, text: @IcType.name

        assert_select "a[href=?]", ic_type_path(@IcType2)#, text: @IcType2.name

    end
#    require 'test_helper'
#
#class ListCategoriesTest < ActionDispatch::IntegrationTest
#
#def setup
#
#@category = Category.create(name: "sports")
#
#@category2 = Category.create(name: "programming")
#
#end
#
#test "should show categories listing" do
#
#get categories_path
#
#assert_template 'categories/index'
#
#assert_select "a[href=?]", category_path(@category), text: @category.name
#
#assert_select "a[href=?]", category_path(@category2), text: @category2.name
#
#end
#
#end
    
end