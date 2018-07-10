class SetGoodTypeIdAtParentId < ActiveRecord::Migration[5.2]
  def self.up
      GoodType.update_all("parent_id=good_type_id")
  end
  def self.down
      
  end
end
