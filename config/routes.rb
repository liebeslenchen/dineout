Dineout::Application.routes.draw do
  resources :events


  resources :diners
  root to: 'diners#index'
end
