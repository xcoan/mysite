Rails.application.routes.draw do

  # adds routes for blog posts
  resources :blogposts, :users

  # creates index page at site route
  root 'pages#index'

  # creates page for projects
  get 'projects' => 'pages#projects'

  # signup new user
  get 'signup' => 'users#new'

  # lets me log in
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  # logout
  get 'logout' => 'sessions#destroy'

  # Contact form
  get 'contacts' => 'contacts#new'
  resources "contacts", only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
