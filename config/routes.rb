Rails.application.routes.draw do

  require 'sidekiq/web'                #gives us a gui web page
  mount Sidekiq::Web => "/sidekiq"

  root to: "home#show"

  resources :mailers, only: [:create]

  get "/sent", to: "mailers#sent"

end
