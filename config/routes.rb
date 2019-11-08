Rails.application.routes.draw do
  root 'cars#home'
  resources :cars
end
