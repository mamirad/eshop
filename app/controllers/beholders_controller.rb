class BeholdersController < ApplicationController
  layout "mylayout"
  before_action :set_beholder, only: [:show, :edit, :update, :destroy]

  # GET /beholders
  # GET /beholders.json
  def index
    @beholders = Beholder.all
  end

  # GET /beholders/1
  # GET /beholders/1.json
  def show
  end

  # GET /beholders/new
  def new
    @beholder = Beholder.new
  end

  # GET /beholders/1/edit
  def edit
  end

  # POST /beholders
  # POST /beholders.json
  def create
    @beholder = Beholder.new(beholder_params)

    respond_to do |format|
      if @beholder.save
        format.html { redirect_to @beholder, notice: 'Beholder was successfully created.' }
        format.json { render :show, status: :created, location: @beholder }
      else
        format.html { render :new }
        format.json { render json: @beholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beholders/1
  # PATCH/PUT /beholders/1.json
  def update
    respond_to do |format|
      if @beholder.update(beholder_params)
        format.html { redirect_to @beholder, notice: 'Beholder was successfully updated.' }
        format.json { render :show, status: :ok, location: @beholder }
      else
        format.html { render :edit }
        format.json { render json: @beholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beholders/1
  # DELETE /beholders/1.json
  def destroy
    @beholder.destroy
    respond_to do |format|
      format.html { redirect_to beholders_url, notice: 'Beholder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beholder
      @beholder = Beholder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beholder_params
      params.require(:beholder).permit(:sale_id, :name1, :profession1, :designation1, :city1, :address1, :mobile1, :officaddress1, :officmobile1, :cnic21, :beholderimg1, :name2, :profession2, :designation2, :city2, :address2, :mobile2, :officaddress2, :officmobile2, :cnic2, :beholderimg2)
    end
end
