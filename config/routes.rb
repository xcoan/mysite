Rails.application.routes.draw do

  # adds routes for blog posts
  resources :blogposts, :users

  # creates index page at site route
  root 'pages#index'

  # creates page for projects
  get 'projects' => 'pages#projects'

  # creates route for contact page
  get 'contact' => 'pages#contact'

  # signup new user
  get 'signup' => 'users#new'

  # lets me log in
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  # logout
  get 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
