class RemoveGiftFromOrderItems < ActiveRecord::Migration[6.0]
  def change
     remove_column :order_items, :gift, :boolean
  end
end
