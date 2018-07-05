class RemoveUserFromDonor < ActiveRecord::Migration[5.2]
  def change
    remove_reference :donors, :user, foreign_key: false
  end
end
