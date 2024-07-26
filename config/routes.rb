Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :posts
  get '/', to: 'homes#top', as: 'top_homes'
  get 'homes/about', to: 'homes#about', as: 'about_homes'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
