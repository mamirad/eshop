class Sale < ApplicationRecord

  	 belongs_to :customer, foreign_key: :cnic, class_name: 'Customer'
	#belongs_to :customer
	has_many :beholders
  	belongs_to :product
  	has_many :instalments

  	def self.update_netbalance(saleid,ubalance)
	@temp=Sale.find(saleid)
	@temp.netbalance=ubalance
	@temp.save
	end
	def self.active_sale_id
@saleid = Sale.where(netbalance: 1..Float::INFINITY).select("id")

	end

end
