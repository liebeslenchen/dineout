Dineout::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :users

  resources :events
  root to: 'start#index'

  match '/events/:id/participate', :to => 'events#participate', :as => 'participate_event'

  resources :diners
end
