class CreateIctypes < ActiveRecord::Migration[5.2]
  def change
    create_table :ictypes do |t|

      t.timestamps
    end
  end
end
