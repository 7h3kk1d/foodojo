class WebhooksController < ApplicationController
  def verification
    if params[:venmo_challenge]
      render plain: params[:venmo_challenge]
    end
  end

  def create
    if params[:type] == 'payment.created'
      participant = Participant.find_by(venmo_payment: params[:data][:id])

      participant.update(status: params[:data][:status])

      head :no_content and return
    end
    
    render status: :not_acceptable
  end
end
