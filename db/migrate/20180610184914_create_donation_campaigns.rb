class CreateDonationCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :donation_campaigns do |t|
      t.references :address, foreign_key: true
      t.timestamp :date_start
      t.timestamp :date_end

      t.timestamps
    end
  end
end
