class ChangeUsersToEmbedProfile < ActiveRecord::Migration[5.2]
  def change
      remove_reference :users, :user_type, foreign_key: true
      add_reference :users, :volunteer, foreign_key: true
      add_reference :users, :donor, foreign_key: true
      add_reference :users, :consumer, foreign_key: true
      add_reference :users, :supplier, foreign_key: true
  end
end
