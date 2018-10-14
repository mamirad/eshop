class CreateBeholders < ActiveRecord::Migration[5.2]
  def change
    create_table :beholders do |t|
      t.references :sale, foreign_key: true
      t.string :name1
      t.string :profession1
      t.string :designation1
      t.string :city1
      t.string :address1
      t.string :mobile1
      t.string :officaddress1
      t.string :officmobile1
      t.string :cnic21
      t.string :beholderimg1
      t.string :name2
      t.string :profession2
      t.string :designation2
      t.string :city2
      t.string :address2
      t.string :mobile2
      t.string :officaddress2
      t.string :officmobile2
      t.string :cnic2
      t.string :beholderimg2

      t.timestamps
    end
  end
end
