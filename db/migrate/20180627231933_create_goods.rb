class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.date :Expiration_date
      t.references :measure_unit, foreign_key: true
      t.references :good_type, foreign_key: true
      t.numeric :quantity
      t.references :donation, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
