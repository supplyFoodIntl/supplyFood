class AddSkillsToVolunteer < ActiveRecord::Migration[5.2]
  def change
      add_column :volunteers, :skills, :json
  end
end
