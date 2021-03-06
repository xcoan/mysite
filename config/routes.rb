Rails.application.routes.draw do

  # adds routes for blog posts
  resources :blogposts, :users, :projects

  # creates index page at site route
  root 'pages#index'

  # signup new user
  get 'signup' => 'users#new'

  # lets me log in
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  # logout
  get 'logout' => 'sessions#destroy'

  # Contact form
  get 'contacts' => 'pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
