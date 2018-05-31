class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.references :person, foreign_key: true
      t.references :user_type, foreign_key: true

      t.timestamps
    end
  end
end
