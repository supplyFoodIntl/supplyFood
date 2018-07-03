class ChangeUsersToEmbedPerson < ActiveRecord::Migration[5.2]
  def change
      remove_reference :users, :person, foreign_key: true
      add_column :users, :full_name, :string
      add_column :users, :ic, :string
      add_reference :users, :person_type, foreign_key: true
      add_reference :users, :ic_type, foreign_key: true
      
  end
end
