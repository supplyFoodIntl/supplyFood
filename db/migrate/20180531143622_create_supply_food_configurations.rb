class CreateSupplyFoodConfigurations < ActiveRecord::Migration[5.2]
  def change
    create_table :supply_food_configurations do |t|
      t.string :name
      t.string :description
      t.integer :value
      t.text :html_configuration

      t.timestamps
    end
  end
end
