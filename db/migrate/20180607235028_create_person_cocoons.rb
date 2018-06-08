class CreatePersonCocoons < ActiveRecord::Migration[5.2]
  def change
    create_table :person_cocoons do |t|
      t.string :name
      t.string :ic
      t.references :ic_type, foreign_key: true

      t.timestamps
    end
  end
end
