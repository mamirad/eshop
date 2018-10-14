class SalesController < ApplicationController
  layout "mylayout"
  before_action :set_sale, only: [:show, :edit, :update, :destroy]

  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.all
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
  end

  # GET /sales/new
  def new
  # if

  @totat_products= Product.exist_product_for_sale >0
    # puts "^^^^^^^^^^^^^"*100
    # puts @totat_products
    if @totat_products
    @sale = Sale.new
  else
      flash[:warning]="Empty Stock, Please Add Product"
      redirect_to(new_product_path)

  end
 

  end

  # GET /sales/1/edit
  def edit
  end

  # POST /sales
  # POST /sales.json
  def create
      @sale = Sale.create(sale_params)
      # @sale.beholders.create(name1:params[:sale][:name1],profession1:params[:sale][:profession1],designation1:params[:sale][:designation1],city1:params[:sale][:city1],address1:params[:sale][:address1],mobile1:params[:sale][:mobile1],officaddress1:params[:sale][:officaddress1],officmobile1:params[:sale][:officmobile1],cnic21:params[:sale][:cnic21],beholderimg1:params[:sale][:beholderimg1],name2:params[:sale][:name2],profession2:params[:sale][:profession2],designation2:params[:sale][:designation2],city2:params[:sale][:city2],address2:params[:sale][:address2],mobile2:params[:sale][:mobile2],officaddress2:params[:sale][:officaddress2],officmobile2:params[:sale][:officmobile2],cnic2:params[:sale][:cnic2],beholderimg2:params[:sale][:beholderimg2])
      #@sale.instalments.create(paid_amount:params[:sale][:paidmoney],net_balance:params[:sale][:netbalance])
      #Product.update_status(params[:sale][:product_id])

    respond_to do |format|
      if @sale.save
         @sale.beholders.create(name1:params[:sale][:name1],profession1:params[:sale][:profession1],designation1:params[:sale][:designation1],city1:params[:sale][:city1],address1:params[:sale][:address1],mobile1:params[:sale][:mobile1],officaddress1:params[:sale][:officaddress1],officmobile1:params[:sale][:officmobile1],cnic21:params[:sale][:cnic21],beholderimg1:params[:sale][:beholderimg1],name2:params[:sale][:name2],profession2:params[:sale][:profession2],designation2:params[:sale][:designation2],city2:params[:sale][:city2],address2:params[:sale][:address2],mobile2:params[:sale][:mobile2],officaddress2:params[:sale][:officaddress2],officmobile2:params[:sale][:officmobile2],cnic2:params[:sale][:cnic2],beholderimg2:params[:sale][:beholderimg2])
           if @sale.save
            @sale.instalments.create(paid_amount:params[:sale][:paidmoney],net_balance:params[:sale][:netbalance])
              if @sale.save
                Product.update_status(params[:sale][:product_id])

               format.html { redirect_to @sale, notice: 'Sale was successfully created.' }
               format.json { render :show, status: :created, location: @sale }
              else
                format.html { render :new }
                format.json { render json: @sale.errors, status: :unprocessable_entity }
      
              end
            else
              format.html { render :new }
              format.json { render json: @sale.errors, status: :unprocessable_entity }
      
            end
      else
        format.html { render :new }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      
      end
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_params
      params.require(:sale).permit(:product_id, :cnic, :paidmoney, :discount, :netinstalment, :netbalance, :netproductprice, :instalmentprice)
    end
   
end
