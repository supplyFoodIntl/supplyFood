class AddPersontoDonor < ActiveRecord::Migration[5.2]
  def change
      add_reference :donors, :person, foreign_key: true
  end
end
