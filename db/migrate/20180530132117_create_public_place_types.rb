class CreatePublicPlaceTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :public_place_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
