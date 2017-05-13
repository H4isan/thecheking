class IndetificationsController < ApplicationController
  before_action :set_indetifications
  before_action :set_indetification, only: [:show, :edit, :update, :destroy]

  # GET clients/1/indetifications
  def index
    @indetifications = @client.indetifications
  end

  # GET clients/1/indetifications/1
  def show
  end

  # GET clients/1/indetifications/new
  def new
    @indetification = @client.indetifications.build
  end

  # GET clients/1/indetifications/1/edit
  def edit
  end

  # POST clients/1/indetifications
  def create
    @indetification = @client.indetifications.build(indetification_params)

    if @indetification.save
      redirect_to([@indetification.client, @indetification], notice: 'Indetification was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT clients/1/indetifications/1
  def update
    if @indetification.update_attributes(indetification_params)
      redirect_to([@indetification.client, @indetification], notice: 'Indetification was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE clients/1/indetifications/1
  def destroy
    @indetification.destroy

    redirect_to client_indetifications_url(@client)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indetifications
      @client = Client.find(params[:client_id])
    end

    def set_indetification
      @indetification = @client.indetifications.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def indetification_params
      params.require(:indetification).permit(:id_number, :expiration_date, :id_type, :expedition_date, :expedition_country)
    end
end
