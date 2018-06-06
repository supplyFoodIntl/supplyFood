require 'test_helper'

class IcTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    def setup
        @ic_type = IcType.new(name:"ic type test")
    
    end
    
    test "ic type must be valid" do
        assert @ic_type.valid?
    end
    test "ic type name must be present" do
        #force invalid name
        @ic_type.name = " "
        assert_not @ic_type.valid?
    end
    test "ic type name must be unique" do
        #saving the first created ic_type
        @ic_type.save
        #creating a new dummy ic_type
        ic_type_duplicate = IcType.new(name:"ic type test") 
        #testing if generate duplicate error
        assert_not ic_type_duplicate.valid?
    end
    test "name should not have to be too long" do
        #force a 51 chars ic_type and expect a error
        @ic_type.name = "*"*51
        assert_not @ic_type.valid?
    end
    test "name should not have to be too short" do
        #force a 3 chars ic_type and expect a error
        @ic_type.name = "**"
        assert_not @ic_type.valid?
    end
    
end
