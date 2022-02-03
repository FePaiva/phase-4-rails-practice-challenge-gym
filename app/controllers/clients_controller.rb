class ClientsController < ApplicationController

  def show
    client = find_params
    render json: client
  end

  def update
    client = find_params
    client.update!(client_params)
    render json: client, status: :ok
  end

  private

  def find_params
    Client.find(params[:id])
  end

  def client_params
    params.permit(:name, :age)
  end

end
