class PotlucksController < ApplicationController
  def show
    render json: Potluck.find(params[:id]), status: :ok
  end
end
