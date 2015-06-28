Rails.application.routes.draw do
  resources :potlucks, only: [:show, :create]

  get '/webhooks', to: 'webhooks#verification'
  post '/webhooks', to: 'webhooks#create'
end
