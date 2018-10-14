class ProductAttr < ActiveRecord::Migration[5.2]
  def change
  	add_column :products, :serial, :string
  	add_column :products, :name, :string
  	add_column :products, :status, :string
    add_column :products, :quantity, :integer
    add_column :products, :productimg, :string
  end
end
