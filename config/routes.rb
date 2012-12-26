Dineout::Application.routes.draw do
  devise_for :users

  resources :events
  root to: 'events#index'


  resources :diners
end
