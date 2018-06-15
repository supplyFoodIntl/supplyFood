class CreateConsentFormTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :consent_form_types do |t|
      t.string :description
      t.text :html_text

      t.timestamps
    end
  end
end
