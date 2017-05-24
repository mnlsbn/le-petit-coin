Rails.application.routes.draw do
  resources :wcs, only: [:index, :new, :create]

  resource :profile, controller: :profile
  devise_for :users

  resources :wcs do
    resources :bookings
  end

  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
