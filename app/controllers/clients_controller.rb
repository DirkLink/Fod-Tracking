class ClientsController < ApplicationController
  def index
    @clients = Client.includes(:finish, :measurement, :note)
  end

  def new
    @client = Client.new
  end

  def show
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      make_attributes @client
      redirect_to @client, notice: "Client created!"
    else
      render :new
    end
  end

  private

    def client_params
      params.require(:client).permit(:first_name, :last_name)
    end

    def make_attributes client
      Finish.create!(client_id: client.id)
      Note.create!(client_id: client.id)
      Measurement.create!(client_id: client.id)
    end
end
