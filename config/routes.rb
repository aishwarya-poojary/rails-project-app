Rails.application.routes.draw do

  root :to=>"pages#home"
  # Defines the root path route ("/")
  # # root "articles#index"
  get 'about',to:"pages#about"
  resources :articles
  get 'signup',to:"users#new"
  resources :users, expect: [:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
