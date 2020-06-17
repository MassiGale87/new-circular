class RemoveTotalAmountFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :total_amount, :integer
  end
end
