class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :ic
      t.references :person_type, foreign_key: true
      t.references :ic_type, foreign_key: true

      t.timestamps
    end
  end
end
