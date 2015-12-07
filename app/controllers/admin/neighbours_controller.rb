class Admin::NeighboursController < ApplicationController
  before_action :set_admin_neighbour, only: [:show, :edit, :update, :destroy]

  # GET /admin/neighbours
  # GET /admin/neighbours.json
  def index
    @admin_neighbours = Admin::Neighbour.all
  end

  # GET /admin/neighbours/1
  # GET /admin/neighbours/1.json
  def show
  end

  # GET /admin/neighbours/new
  def new
    @admin_neighbour = Admin::Neighbour.new
  end

  # GET /admin/neighbours/1/edit
  def edit
  end

  # POST /admin/neighbours
  # POST /admin/neighbours.json
  def create
    @admin_neighbour = Admin::Neighbour.new(admin_neighbour_params)

    respond_to do |format|
      if @admin_neighbour.save
        format.html { redirect_to @admin_neighbour, notice: 'Neighbour was successfully created.' }
        format.json { render :show, status: :created, location: @admin_neighbour }
      else
        format.html { render :new }
        format.json { render json: @admin_neighbour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/neighbours/1
  # PATCH/PUT /admin/neighbours/1.json
  def update
    respond_to do |format|
      if @admin_neighbour.update(admin_neighbour_params)
        format.html { redirect_to @admin_neighbour, notice: 'Neighbour was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_neighbour }
      else
        format.html { render :edit }
        format.json { render json: @admin_neighbour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/neighbours/1
  # DELETE /admin/neighbours/1.json
  def destroy
    @admin_neighbour.destroy
    respond_to do |format|
      format.html { redirect_to admin_neighbours_url, notice: 'Neighbour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_neighbour
      @admin_neighbour = Admin::Neighbour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_neighbour_params
      params.require(:admin_neighbour).permit(:user_id, :neihgbour_id)
    end
end
