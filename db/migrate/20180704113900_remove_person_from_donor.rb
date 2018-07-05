class RemovePersonFromDonor < ActiveRecord::Migration[5.2]
  def change
      remove_column :donors, :person_id, foreign_key: false
  end
end
