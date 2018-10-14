class Instalment < ActiveRecord::Base
	belongs_to :sale

	def self.instalments(cnic,productid)
		@record=Sale.where( cnic:'35102',netbalance: -1..Float::INFINITY).joins(:instalments).select("instalments.*,sales.*")`
	

	end

end
