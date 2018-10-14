class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :product, foreign_key: true
      t.string :cnic
     # t.references :customer, foreign_key: true
      t.integer :discount
      t.integer :paidmoney
      t.integer :netinstalment
      t.integer :netbalance
      t.integer :netproductprice
      t.integer :instalmentprice

      t.timestamps
    end
  end
end
