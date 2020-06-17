class AddGiftEmailToOrderItem < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :gift_email, :text
  end
end
