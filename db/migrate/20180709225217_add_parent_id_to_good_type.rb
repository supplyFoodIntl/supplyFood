class AddParentIdToGoodType < ActiveRecord::Migration[5.2]
  def change
    add_column :good_types, :parent_id, :bigint
  end
end
