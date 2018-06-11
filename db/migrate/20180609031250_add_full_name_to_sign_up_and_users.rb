class AddFullNameToSignUpAndUsers < ActiveRecord::Migration[5.2]
  def change
      add_column :signups, :full_name, :string
      add_column :users, :full_name, :string
  end
end
