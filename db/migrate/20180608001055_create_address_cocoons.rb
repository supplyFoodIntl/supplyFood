class CreateAddressCocoons < ActiveRecord::Migration[5.2]
  def change
    create_table :address_cocoons do |t|
      t.string :line_one
      t.string :line_two
      t.integer :zip_code
      t.belongs_to :person_cocoon, foreign_key: true

      t.timestamps
    end
  end
end
