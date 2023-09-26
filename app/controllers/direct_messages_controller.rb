class DirectMessagesController < ApplicationController
  before_action :set_direct_message, only: %i[ show edit update destroy ]

  # GET /direct_messages or /direct_messages.json
  def index
    @direct_messages = DirectMessage.all
  end

  # GET /direct_messages/1 or /direct_messages/1.json
  def show
  end

  # GET /direct_messages/new
  def new
    @direct_message = DirectMessage.new
  end

  # GET /direct_messages/1/edit
  def edit
  end

  # POST /direct_messages or /direct_messages.json
  def create
    @direct_message = DirectMessage.new(direct_message_params)

    respond_to do |format|
      if @direct_message.save
        format.html { redirect_to direct_message_url(@direct_message), notice: "Direct message was successfully created." }
        format.json { render :show, status: :created, location: @direct_message }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @direct_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /direct_messages/1 or /direct_messages/1.json
  def update
    respond_to do |format|
      if @direct_message.update(direct_message_params)
        format.html { redirect_to direct_message_url(@direct_message), notice: "Direct message was successfully updated." }
        format.json { render :show, status: :ok, location: @direct_message }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @direct_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /direct_messages/1 or /direct_messages/1.json
  def destroy
    @direct_message.destroy

    respond_to do |format|
      format.html { redirect_to direct_messages_url, notice: "Direct message was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direct_message
      @direct_message = DirectMessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def direct_message_params
      params.fetch(:direct_message, {})
    end
end
