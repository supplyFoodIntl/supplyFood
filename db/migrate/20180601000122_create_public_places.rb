class CreatePublicPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :public_places do |t|
      t.string :name
      t.references :public_place_type, foreign_key: true
      t.references :postal_code_hint, foreign_key: true

      t.timestamps
    end
  end
end
