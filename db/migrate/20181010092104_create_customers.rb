class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers  ,
    {
      :id           => false,
      :primary_key  => :cnic
    }do |t|
      t.string :name
      t.string :city
      t.string :address
      t.string :mobile
      t.string :officaddress
      t.string :officmobile
      t.string :cost
      t.string :housestatus
      t.string :cnic
      t.string :profession
      t.string :designation
      t.integer :salary
      t.string :cnicimg1
      t.string :cnicimg2
      t.string :cusimg

      t.timestamps
    end
  end
end
