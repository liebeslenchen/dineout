Dineout::Application.routes.draw do
  resources :diners
  root to: 'diners#index'
end
