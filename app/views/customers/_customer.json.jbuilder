json.extract! customer, :id, :name, :city, :address, :mobile, :officaddress, :officmobile, :cost, :housestatus, :cnic, :profession, :designation, :salary, :cnicimg1, :cnicimg2, :cusimg, :created_at, :updated_at
json.url customer_url(customer, format: :json)
