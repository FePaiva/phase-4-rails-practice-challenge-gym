class GymsController < ApplicationController

  def show
    gym = Gym.find(params[:id])
    render json: gym, status: :ok
  end

  def destroy
    gym = Gym.find(params[:id])
    gym.destroy
    head :no_content
  end
end

  # private

  # def find_gym
  #   gym = Gym.find(params[:id])
  # end

