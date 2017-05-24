Rails.application.routes.draw do
  resources :profiles, except: [:index]
  resources :wcs, only: [:index, :new, :create]

  devise_for :users
  root to: 'pages#home'

  resources :wcs do
    resources :bookings
  end
  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
