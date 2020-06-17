class RemoveGiftEmailFromOrderItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :order_items, :gift_email, :text
  end
end
