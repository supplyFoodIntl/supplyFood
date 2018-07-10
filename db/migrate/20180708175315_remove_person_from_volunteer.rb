class RemovePersonFromVolunteer < ActiveRecord::Migration[5.2]
  def change
      remove_reference :volunteers, :person, foreign_key: true
  end
end
