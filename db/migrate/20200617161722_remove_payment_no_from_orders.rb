class RemovePaymentNoFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :payment_no, :text
  end
end
