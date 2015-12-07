class Admin::BlockRequestsController < ApplicationController
  before_action :set_admin_block_request, only: [:show, :edit, :update, :destroy]

  # GET /admin/block_requests
  # GET /admin/block_requests.json
  def index
    @admin_block_requests = Admin::BlockRequest.all
  end

  # GET /admin/block_requests/1
  # GET /admin/block_requests/1.json
  def show
  end

  # GET /admin/block_requests/new
  def new
    @admin_block_request = Admin::BlockRequest.new
  end

  # GET /admin/block_requests/1/edit
  def edit
  end

  # POST /admin/block_requests
  # POST /admin/block_requests.json
  def create
    @admin_block_request = Admin::BlockRequest.new(admin_block_request_params)

    respond_to do |format|
      if @admin_block_request.save
        format.html { redirect_to @admin_block_request, notice: 'Block request was successfully created.' }
        format.json { render :show, status: :created, location: @admin_block_request }
      else
        format.html { render :new }
        format.json { render json: @admin_block_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/block_requests/1
  # PATCH/PUT /admin/block_requests/1.json
  def update
    respond_to do |format|
      if @admin_block_request.update(admin_block_request_params)
        format.html { redirect_to @admin_block_request, notice: 'Block request was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_block_request }
      else
        format.html { render :edit }
        format.json { render json: @admin_block_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/block_requests/1
  # DELETE /admin/block_requests/1.json
  def destroy
    @admin_block_request.destroy
    respond_to do |format|
      format.html { redirect_to admin_block_requests_url, notice: 'Block request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_block_request
      @admin_block_request = Admin::BlockRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_block_request_params
      params.require(:admin_block_request).permit(:requester_id, :approver1_id, :approver2_id, :approver3_id)
    end
end
