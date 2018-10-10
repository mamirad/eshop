class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :model
      t.string :size
      t.string :color
      t.integer :pprice
      t.integer :sprice

      t.timestamps
    end
  end
end
