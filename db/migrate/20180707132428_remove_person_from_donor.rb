class RemovePersonFromDonor < ActiveRecord::Migration[5.2]
  def change
    remove_reference :donors, :person, foreign_key: true
  end
end
