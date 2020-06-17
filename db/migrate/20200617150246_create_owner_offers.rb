class CreateOwnerOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :owner_offers do |t|

      t.timestamps
    end
  end
end
