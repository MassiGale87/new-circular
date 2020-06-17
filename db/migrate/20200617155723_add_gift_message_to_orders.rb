class AddGiftMessageToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :gift_message, :text
  end
end
