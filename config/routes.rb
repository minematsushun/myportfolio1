Rails.application.routes.draw do
  root "inquiries#index"
  resources :inquiries, only: [:index, :create]

  # メーラー
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
