class CreatePostalCodeHints < ActiveRecord::Migration[5.2]
  def change
    create_table :postal_code_hints do |t|
      t.string :code
      t.string :hint

      t.timestamps
    end
  end
end
