class ChangeDefaultsConsentForm < ActiveRecord::Migration[5.2]
  def change
      change_column :consent_forms, :is_signed, :boolean, :null => false, :default => false
  end
end
