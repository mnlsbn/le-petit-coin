Rails.application.routes.draw do
  resources :profiles, except: [:index]

  devise_for :users
  root to: 'pages#home'


  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
