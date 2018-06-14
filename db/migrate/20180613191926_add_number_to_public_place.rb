class AddNumberToPublicPlace < ActiveRecord::Migration[5.2]
  def change
      add_column :public_places, :number, :integer
  end
end
