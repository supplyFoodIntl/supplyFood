class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :public_place, foreign_key: true
      t.integer :private_place_number
      t.references :private_place_type, foreign_key: true

      t.timestamps
    end
  end
end
