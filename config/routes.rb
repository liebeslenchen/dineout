Dineout::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :users

  resources :events
  root to: 'events#index'


  resources :diners
end
