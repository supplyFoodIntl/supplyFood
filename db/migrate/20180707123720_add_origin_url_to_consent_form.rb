class AddOriginUrlToConsentForm < ActiveRecord::Migration[5.2]
  def change
    add_column :consent_forms, :origin_url, :string
  end
end
