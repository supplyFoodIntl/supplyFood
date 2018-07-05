class AddUserToConsentForm < ActiveRecord::Migration[5.2]
  def change
      add_reference :consent_forms, :user, foreign_key: true
      remove_reference :consent_forms, :person
  end
end
