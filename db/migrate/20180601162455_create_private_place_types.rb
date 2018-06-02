class CreatePrivatePlaceTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :private_place_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
