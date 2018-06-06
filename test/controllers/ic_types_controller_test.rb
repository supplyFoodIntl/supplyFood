require 'test_helper'

class IcTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ic_type = ic_types(:one) 
  end

  test "should get index" do
    get ic_types_url
    assert_response :success
  end

  test "should get new" do
    get new_ic_type_url
    assert_response :success
  end

  test "should show ic_type" do
    get ic_type_url(@ic_type)
    assert_response :success
  end

  test "should create ic_type" do
    assert_difference('IcType.count') do
      post ic_types_url, params: { ic_type: { name: rand(10000).to_s  } } 
    end
    assert_redirected_to ic_types_path(IcType.last)
  end



  test "should get edit" do
    get edit_ic_type_url(@ic_type)
    assert_response :success
  end

  test "should update ic_type" do
    patch ic_type_url(@ic_type), params: { ic_type: { name: rand(10000).to_s } }
      puts "expected redirected to #{ic_type_url(@ic_type)}"
    assert_redirected_to ic_type_url(@ic_type)
  end

    
  test "should fail to destroy since it has a person" do
    #should fail since it has a supplier
    assert_raises(ActiveRecord::InvalidForeignKey)  do
      delete ic_type_url(@ic_type)
    end
  end

  test "should destroy ic_type" do
    #volunteer linked to this person
    @volunteer = volunteers(:one)
    delete volunteer_url(@volunteer)
    #user linked to this person
    @user = users(:one)
    delete user_url(@user)
    #supplier linked to this person
    @supplier = suppliers(:one)
    delete supplier_url(@supplier)
    #should success after delete the person
    @person = people(:one)
    delete person_url(@person)

      
    assert_difference('IcType.count', -1) do
      delete ic_type_url(@ic_type)
    end

    assert_redirected_to ic_types_url
  end
end
