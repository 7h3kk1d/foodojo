require 'twilio-ruby'

class PotlucksController < ApplicationController
  def create
    potluck = Potluck.create potluck_params
      .merge(recipe_ids: params[:potluck].fetch(:recipes, []))

    params[:potluck].fetch(:people, []).each do
      |person|

      new_person = Person.create name: person.fetch(:name, nil), phone_number: person.fetch(:phone_number, nil)
      Participant.create person: new_person, potluck: potluck, venmo_payment: person.fetch(:venmo_payment, nil)
    end

    potluck.participants.each do
      |participant|
      participant.send_message(twilio_client)
    end

    render json: potluck, status: :created
  end

  def show
    render json: Potluck.find(params[:id]), status: :ok
  end

  private

  def potluck_params
    params.require(:potluck).permit(:owner_venmo, :total_cost)
  end

  def twilio_client
    @client ||= Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_AUTH_TOKEN']
  end
end
