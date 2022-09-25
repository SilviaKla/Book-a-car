Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"
  resources :cars do
    resources :bookings, only: [ :create, :destroy, :index, :show ]
  end
end
