class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :alpha_2_code
      t.string :alpha_3_code
      t.integer :numeric_code
      t.boolean :independent

      t.timestamps
    end
  end
end
