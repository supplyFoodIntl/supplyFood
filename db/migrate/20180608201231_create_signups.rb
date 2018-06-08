class CreateSignups < ActiveRecord::Migration[5.2]
  def change
    create_table :signups do |t|
      t.string :username
      t.string :password_digest
      t.string :ic
      t.references :ic_type, foreign_key: true
      t.string :address_line1
      t.string :address_line2
      t.string :zipcode
      t.string :state
      t.string :country
      t.string :phone

      t.timestamps
    end
  end
end
