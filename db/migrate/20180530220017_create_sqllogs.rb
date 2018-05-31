class CreateSqllogs < ActiveRecord::Migration[5.2]
  def change
    create_table :sqllogs do |t|
      t.string :sql_executed

      t.timestamps
    end
  end
end
