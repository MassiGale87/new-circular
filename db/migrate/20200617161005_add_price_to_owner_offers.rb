class AddPriceToOwnerOffers < ActiveRecord::Migration[6.0]
  def change
    add_monetize :owner_offers, :price, currency: { present: false }
  end
end
