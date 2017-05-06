class MoneyController < ApplicationController
  before_action do |controller|
    if action_name != "find" && action_name != "findClient" 
      set_client()
    end
  end
  before_action :set_money, only: [:show, :edit, :update, :destroy]

  # GET clients/1/money
  def index
    @money = @client.money
  end

  # GET clients/1/money/1
  def show
  end

  # GET  /money/find
  def find 
    if user_signed_in?
      @clients = Client.select("id,name").to_json
      @cli = @clients.gsub! "id","value"
      @cli = @clients.gsub! "name","label"
    else
      "{}"
    end  
  end

  def findClient
    if user_signed_in?
      render status:200,  json: @clients = Client.select("id,name").to_json.gsub!(/\"/, '\'') 
    else
      "{}"
    end  
  end
  # GET clients/1/money/new
  def new
    @money = @client.money.build
  end

  # GET clients/1/money/1/edit
  def edit
  end

  # POST clients/1/money
  def create
    @money = @client.money.build(money_params)
    @money.user_id = current_user.id
    if @money.save
      redirect_to([@money.client, @money], notice: 'Money was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT clients/1/money/1
  def update
    if @money.update_attributes(money_params)
      redirect_to([@money.client, @money], notice: 'Money was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE clients/1/money/1
  def destroy
    @money.destroy

    redirect_to client_money_index_url(@client)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:client_id])
    end

    def set_money
      @money = @client.money.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def money_params
      params.require(:money).permit(:cash_number, :enterprise_name, :money, :rate, :money_date, :redeemed, :comment, :user_id)
    end
end
