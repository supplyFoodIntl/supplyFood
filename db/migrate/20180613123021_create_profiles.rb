class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.references :person, foreign_key: true
      t.references :consumer, foreign_key: true
      t.references :supplier, foreign_key: true
      t.references :volunteer, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
