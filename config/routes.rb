Rails.application.routes.draw do
  get 'chat/index'
  get 'chat/show'
  root 'application#hello'
end
