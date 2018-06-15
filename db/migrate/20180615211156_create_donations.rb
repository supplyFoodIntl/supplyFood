class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.timestamp :available_start
      t.timestamp :available_end
      t.references :donor, foreign_key: true
      t.references :volunteer, foreign_key: true

      t.timestamps
    end
  end
end
