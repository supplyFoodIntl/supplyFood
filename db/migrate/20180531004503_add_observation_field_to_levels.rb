class AddObservationFieldToLevels < ActiveRecord::Migration[5.2]
  def change
	add_column :levels, :observation,:string
  end
end
