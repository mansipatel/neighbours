class Admin::ThreadsController < ApplicationController
  before_action :set_admin_thread, only: [:show, :edit, :update, :destroy]

  # GET /admin/threads
  # GET /admin/threads.json
  def index
    @admin_threads = Admin::Thread.all
  end

  # GET /admin/threads/1
  # GET /admin/threads/1.json
  def show
  end

  # GET /admin/threads/new
  def new
    @admin_thread = Admin::Thread.new
  end

  # GET /admin/threads/1/edit
  def edit
  end

  # POST /admin/threads
  # POST /admin/threads.json
  def create
    @admin_thread = Admin::Thread.new(admin_thread_params)

    respond_to do |format|
      if @admin_thread.save
        format.html { redirect_to @admin_thread, notice: 'Thread was successfully created.' }
        format.json { render :show, status: :created, location: @admin_thread }
      else
        format.html { render :new }
        format.json { render json: @admin_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/threads/1
  # PATCH/PUT /admin/threads/1.json
  def update
    respond_to do |format|
      if @admin_thread.update(admin_thread_params)
        format.html { redirect_to @admin_thread, notice: 'Thread was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_thread }
      else
        format.html { render :edit }
        format.json { render json: @admin_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/threads/1
  # DELETE /admin/threads/1.json
  def destroy
    @admin_thread.destroy
    respond_to do |format|
      format.html { redirect_to admin_threads_url, notice: 'Thread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_thread
      @admin_thread = Admin::Thread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_thread_params
      params.require(:admin_thread).permit(:msg_id, :thread_time, :thread_by, :thread_text)
    end
end
