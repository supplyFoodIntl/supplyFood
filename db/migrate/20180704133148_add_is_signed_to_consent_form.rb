class AddIsSignedToConsentForm < ActiveRecord::Migration[5.2]
  def change
      add_column :consent_forms, :is_signed, :boolean
      add_column :consent_forms, :signed_at, :datetime
      add_column :consent_forms, :valid_until, :datetime
  end
end
