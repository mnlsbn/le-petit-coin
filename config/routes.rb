Rails.application.routes.draw do

  resource :profile, controller: :profile do
    resources :wcs, only: [:new, :create]
  end

  resources :wcs, only: [:index, :show]

  devise_for :users

  as :user do
  get 'profile', :to => 'devise/sessions#create', :as => :user_root
  end

  resources :wcs do
    resources :bookings
  end

  resources :bookings do
    resources :reviews, only: [:create]
  end

  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
