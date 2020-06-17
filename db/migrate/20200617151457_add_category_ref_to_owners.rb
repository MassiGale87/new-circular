class AddCategoryRefToOwners < ActiveRecord::Migration[6.0]
  def change
    add_reference :owners, :category, null: false, foreign_key: true
  end
end
