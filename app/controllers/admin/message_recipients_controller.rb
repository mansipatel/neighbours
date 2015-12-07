class Admin::MessageRecipientsController < ApplicationController
  before_action :set_admin_message_recipient, only: [:show, :edit, :update, :destroy]

  # GET /admin/message_recipients
  # GET /admin/message_recipients.json
  def index
    @admin_message_recipients = Admin::MessageRecipient.all
  end

  # GET /admin/message_recipients/1
  # GET /admin/message_recipients/1.json
  def show
  end

  # GET /admin/message_recipients/new
  def new
    @admin_message_recipient = Admin::MessageRecipient.new
  end

  # GET /admin/message_recipients/1/edit
  def edit
  end

  # POST /admin/message_recipients
  # POST /admin/message_recipients.json
  def create
    @admin_message_recipient = Admin::MessageRecipient.new(admin_message_recipient_params)

    respond_to do |format|
      if @admin_message_recipient.save
        format.html { redirect_to @admin_message_recipient, notice: 'Message recipient was successfully created.' }
        format.json { render :show, status: :created, location: @admin_message_recipient }
      else
        format.html { render :new }
        format.json { render json: @admin_message_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/message_recipients/1
  # PATCH/PUT /admin/message_recipients/1.json
  def update
    respond_to do |format|
      if @admin_message_recipient.update(admin_message_recipient_params)
        format.html { redirect_to @admin_message_recipient, notice: 'Message recipient was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_message_recipient }
      else
        format.html { render :edit }
        format.json { render json: @admin_message_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/message_recipients/1
  # DELETE /admin/message_recipients/1.json
  def destroy
    @admin_message_recipient.destroy
    respond_to do |format|
      format.html { redirect_to admin_message_recipients_url, notice: 'Message recipient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_message_recipient
      @admin_message_recipient = Admin::MessageRecipient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_message_recipient_params
      params.require(:admin_message_recipient).permit(:msg_id, :recipient_id, :recipient_type)
    end
end
