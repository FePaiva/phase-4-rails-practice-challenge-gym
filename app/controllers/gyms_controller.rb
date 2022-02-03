class GymsController < ApplicationController

  def index
    render json: Gym.all
  end

  def show
    gym = find_params
    render json: gym, status: :ok
  end

  def update
    gym = find_params
    gym.update!(gym_params)
    render json: gym, stauts: :ok
  end

  def destroy
    gym = find_params
    gym.destroy
    head :no_content
  end

  private

  def find_params
    gym = Gym.find(params[:id])
  end

  def gym_params
    params.permit(:name, :address)
  end

end



