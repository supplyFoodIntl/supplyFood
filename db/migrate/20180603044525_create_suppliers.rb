class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.references :person, foreign_key: true
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
