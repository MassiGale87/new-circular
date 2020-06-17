class AddGiftEmailToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :gift_email, :text
  end
end
