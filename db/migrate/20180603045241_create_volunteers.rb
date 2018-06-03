class CreateVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteers do |t|
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
