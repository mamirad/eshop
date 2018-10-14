class CreateInstalments < ActiveRecord::Migration[5.2]
  def change
    create_table :instalments do |t|
      t.references :sale, foreign_key: true
      t.integer :paid_amount
      t.integer :net_balance
    end
  end
end
