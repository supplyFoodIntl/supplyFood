class RemovePersonalFieldsFromSignUp < ActiveRecord::Migration[5.2]
  def change
      remove_column :signups, :username
      remove_column :signups, :password_digest
      remove_column :signups, :ic
      remove_column :signups, :ic_type_id
  end
end
