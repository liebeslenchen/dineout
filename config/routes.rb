Dineout::Application.routes.draw do
  devise_for :users

  resources :events


  resources :diners
  root to: 'diners#index'
end
