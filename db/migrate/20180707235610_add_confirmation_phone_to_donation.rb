class AddConfirmationPhoneToDonation < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :confirmation_phone, :string
  end
end
