Rails.application.routes.draw do
  root to: 'dashboard#index'

  resources :deposits

  resources :depositers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
