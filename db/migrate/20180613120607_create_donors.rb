class CreateDonors < ActiveRecord::Migration[5.2]
  def change
    create_table :donors do |t|
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
