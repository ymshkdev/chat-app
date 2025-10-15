Rails.application.routes.draw do
  get 'messages/index'


  root to: "messages#index"
  devise_for :users
  resources :users, only: [:edit, :update]
  get "up" => "rails/health#show", as: :rails_health_check

end
