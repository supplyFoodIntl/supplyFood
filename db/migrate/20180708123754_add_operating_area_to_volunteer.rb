class AddOperatingAreaToVolunteer < ActiveRecord::Migration[5.2]
  def change
      add_column :volunteers, :operating_area, :string
      add_column :volunteers, :availability, :string
      add_column :volunteers, :health_concerns, :json
  end
end
