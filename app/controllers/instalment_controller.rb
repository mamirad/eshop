class InstalmentController < ApplicationController
	layout "mylayout"
	def search_products
	end
	def searched_products
			# @record=ActiveRecord::Base.connection.execute(" select products.*,sales.* from products inner join sales on products.id=sales.product_id where sales.cnic='35102' AND sales.netbalance>0
					# ")
	

		begin
				@recordtemp=Customer.find(params[:cuscnic]).products.where 'sales.netbalance>0'
		@record=@recordtemp.select("products.*,sales.*,sales.id as saleid")

		  respond_to do |format|
			format.js{render partial: 'instalment/searched_product'}
			end 
		rescue ActiveRecord::RecordNotFound => e
  			respond_to do |format|
			format.js{render partial: 'instalment/errormsg'}
			end 
		end
	end


	def paydues
		# puts "YYYYYYYYYYYYYYYYYYY"*50
		@saleid=params[:saleid]
		@sale_attr=Sale.find(@saleid)
		# puts @saleid
	end
	

	def paid
		@paid_amount = params[:paidamount]
		@saleid=params[:saleid]
		@netbalance=Sale.find(params[:saleid]).netbalance
		@u_net_balance=@netbalance.to_i-@paid_amount.to_i
		Sale.update_netbalance(@saleid,@u_net_balance)

		
		# puts "YYYYYYYYYYYYYYYYYYY"*50
		puts @u_net_balance
		puts @paid_amount
		@instalment=Instalment.create(sale_id:@saleid,paid_amount:@paid_amount,net_balance:@u_net_balance)
		@instalment.save
		flash[:notic]="payment has been received"
		redirect_to(search_products_path)

	end
	
	def form_view_instalment
	
	end

	def view_instalment
		begin
				@cnic=params[:cuscnic]
				@products=Product.joins(:sale).where(sales:{cnic:@cnic})
				@customer=Customer.find(@cnic)
				respond_to do |format|
		            format.js{render partial: 'instalment/view_instalment'}

		        end 

        rescue ActiveRecord::RecordNotFound => e
  			respond_to do |format|
			format.js{render partial: 'instalment/errormsg'}
			end 
		end
		
	end

end
