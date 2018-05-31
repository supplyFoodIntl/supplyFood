class CreateMeasureUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :measure_units do |t|
      t.string :name

      t.timestamps
    end
  end
end
