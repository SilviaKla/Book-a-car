Rails.application.routes.draw do
  devise_for :users
  root to: "cars#index"
  get "profile", to: "pages#profile"
  resources :cars do
    resources :bookings, only: [ :create, :destroy, :index, :show ]
  end
end
