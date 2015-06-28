class WebhooksController < ApplicationController
  def verification
    if params[:venmo_challenge]
      render plain: params[:venmo_challenge]
    end
  end
end
