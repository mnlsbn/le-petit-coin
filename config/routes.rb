Rails.application.routes.draw do

  resource :profile, controller: :profile do
    resources :wcs, only: [:new, :create]
  end

  resources :wcs, only: [:index, :show]

  devise_for :users

  resources :wcs do
    resources :bookings
  end

  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
