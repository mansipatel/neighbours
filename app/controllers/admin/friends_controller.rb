class Admin::FriendsController < ApplicationController
  before_action :set_admin_friend, only: [:show, :edit, :update, :destroy]

  # GET /admin/friends
  # GET /admin/friends.json
  def index
    @admin_friends = Admin::Friend.all
  end

  # GET /admin/friends/1
  # GET /admin/friends/1.json
  def show
  end

  # GET /admin/friends/new
  def new
    @admin_friend = Admin::Friend.new
  end

  # GET /admin/friends/1/edit
  def edit
  end

  # POST /admin/friends
  # POST /admin/friends.json
  def create
    @admin_friend = Admin::Friend.new(admin_friend_params)

    respond_to do |format|
      if @admin_friend.save
        format.html { redirect_to @admin_friend, notice: 'Friend was successfully created.' }
        format.json { render :show, status: :created, location: @admin_friend }
      else
        format.html { render :new }
        format.json { render json: @admin_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/friends/1
  # PATCH/PUT /admin/friends/1.json
  def update
    respond_to do |format|
      if @admin_friend.update(admin_friend_params)
        format.html { redirect_to @admin_friend, notice: 'Friend was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_friend }
      else
        format.html { render :edit }
        format.json { render json: @admin_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/friends/1
  # DELETE /admin/friends/1.json
  def destroy
    @admin_friend.destroy
    respond_to do |format|
      format.html { redirect_to admin_friends_url, notice: 'Friend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_friend
      @admin_friend = Admin::Friend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_friend_params
      params.require(:admin_friend).permit(:sender_id, :receiver_id, :status)
    end
end
