Rails.application.routes.draw do
  resources :non_devise_users
  resources :user_awards
  resources :categories
  get '/' => "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
