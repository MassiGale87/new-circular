class AddGiftToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :gift, :boolean
  end
end
