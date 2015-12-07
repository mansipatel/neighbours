class Admin::NeighbourhoodsController < ApplicationController
  before_action :set_admin_neighbourhood, only: [:show, :edit, :update, :destroy]

  # GET /admin/neighbourhoods
  # GET /admin/neighbourhoods.json
  def index
    @admin_neighbourhoods = Admin::Neighbourhood.all
  end

  # GET /admin/neighbourhoods/1
  # GET /admin/neighbourhoods/1.json
  def show
  end

  # GET /admin/neighbourhoods/new
  def new
    @admin_neighbourhood = Admin::Neighbourhood.new
  end

  # GET /admin/neighbourhoods/1/edit
  def edit
  end

  # POST /admin/neighbourhoods
  # POST /admin/neighbourhoods.json
  def create
    @admin_neighbourhood = Admin::Neighbourhood.new(admin_neighbourhood_params)

    respond_to do |format|
      if @admin_neighbourhood.save
        format.html { redirect_to @admin_neighbourhood, notice: 'Neighbourhood was successfully created.' }
        format.json { render :show, status: :created, location: @admin_neighbourhood }
      else
        format.html { render :new }
        format.json { render json: @admin_neighbourhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/neighbourhoods/1
  # PATCH/PUT /admin/neighbourhoods/1.json
  def update
    respond_to do |format|
      if @admin_neighbourhood.update(admin_neighbourhood_params)
        format.html { redirect_to @admin_neighbourhood, notice: 'Neighbourhood was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_neighbourhood }
      else
        format.html { render :edit }
        format.json { render json: @admin_neighbourhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/neighbourhoods/1
  # DELETE /admin/neighbourhoods/1.json
  def destroy
    @admin_neighbourhood.destroy
    respond_to do |format|
      format.html { redirect_to admin_neighbourhoods_url, notice: 'Neighbourhood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_neighbourhood
      @admin_neighbourhood = Admin::Neighbourhood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_neighbourhood_params
      params.require(:admin_neighbourhood).permit(:hood_address, :city, :state, :zip, :hood_description)
    end
end
