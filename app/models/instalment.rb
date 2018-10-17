class Instalment < ActiveRecord::Base
	belongs_to :sale

	def self.instalments(cnic,productid)
		@record=Sale.where( cnic:cnic,netbalance: -1..Float::INFINITY,product_id:productid).joins(:instalments).select('instalments.*,sales.*')
	

	end

end
