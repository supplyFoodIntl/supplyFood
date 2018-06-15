class CreateConsentForms < ActiveRecord::Migration[5.2]
  def change
    create_table :consent_forms do |t|
      t.references :consent_form_type, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
