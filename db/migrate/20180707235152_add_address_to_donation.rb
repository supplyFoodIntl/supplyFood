class AddAddressToDonation < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :retrieve_address, :string
  end
end
