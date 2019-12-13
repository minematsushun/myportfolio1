Rails.application.routes.draw do
  root "mine#index"
  resources :mine, only: [:index, :create]
end
