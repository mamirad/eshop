class Sale < ApplicationRecord

  	# belongs_to :customer, foreign_key: :cnic, class_name: 'Customer'
	belongs_to :customer
	has_many :beholders
  	belongs_to :product
  	has_many :instalments

  	def self.update_netbalance(saleid,ubalance)
	@temp=Sale.find(saleid)
	@temp.netbalance=ubalance
	@temp.save
end

end
