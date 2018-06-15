class CreatePublicPlaceNameOnPublicPlaceHint < ActiveRecord::Migration[5.2]
  def change
      add_column :postal_code_hints, :public_place_name, :string
  end
end
