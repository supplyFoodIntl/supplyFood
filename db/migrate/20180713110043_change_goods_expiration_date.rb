class ChangeGoodsExpirationDate < ActiveRecord::Migration[5.2]
  def change
      remove_column :goods, :Expiration_date
      add_column :goods, :expiration_date, :date, :null => false
      
  end
end
