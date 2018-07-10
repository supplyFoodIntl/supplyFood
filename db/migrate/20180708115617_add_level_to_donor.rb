class AddLevelToDonor < ActiveRecord::Migration[5.2]
  def change
    add_reference :donors, :level, foreign_key: true
  end
end
