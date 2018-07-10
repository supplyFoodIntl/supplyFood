class SetGoodTypeIdAncestry < ActiveRecord::Migration[5.2]
    

  def self.up
    add_column :good_types, :ancestry, :string
    add_index :good_types, :ancestry
  end

  def self.down
    remove_index :good_types, :ancestry
    remove_column :good_types, :ancestry
  end


end
