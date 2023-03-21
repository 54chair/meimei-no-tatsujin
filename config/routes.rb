Rails.application.routes.draw do
  root 'chat#index'
  get '/result', to: 'chat#show'
end
