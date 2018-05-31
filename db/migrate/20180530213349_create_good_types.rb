class CreateGoodTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :good_types do |t|
      t.string :name
      t.references :good_type, foreign_key: true

      t.timestamps
    end
  end
end
