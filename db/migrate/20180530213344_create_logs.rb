class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :class_name
      t.string :method_name
      t.string :hash_parms

      t.timestamps
    end
  end
end
