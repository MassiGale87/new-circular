class ChangeColumnOwnerToFalseForUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:users, :owner, from: true, to: false)
  end
end
