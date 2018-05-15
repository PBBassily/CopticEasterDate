Rails.application.routes.draw do
  root "calculator#index"
  get '/new', to: "calculator#new"
end
