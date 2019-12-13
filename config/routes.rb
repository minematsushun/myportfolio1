Rails.application.routes.draw do
  root "inquiries#index"
  resources :inquiries, only: [:index, :create]
end
