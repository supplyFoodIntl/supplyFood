class CreateVolunteersServicesJoinTable < ActiveRecord::Migration[5.2]
  def change
	create_join_table :volunteers , :services do |t|
		t.index :volunteer_id
		t.index :service_id
	end
  end
end
