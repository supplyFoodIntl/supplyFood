class CreateFormContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :form_contacts do |t|
      t.string :name
      t.string :subject
      t.string :message

      t.timestamps
    end
  end
end
