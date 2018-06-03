class CreateVolunteersRanksJoinTable < ActiveRecord::Migration[5.2]
  def change

	create_join_table :volunteers , :ranks do |t|
		t.index :volunteer_id
		t.index :rank_id
	end

  end
end
