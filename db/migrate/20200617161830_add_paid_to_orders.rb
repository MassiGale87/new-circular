class AddPaidToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :orders, :string
    add_column :orders, :paid, :boolean
  end
end
