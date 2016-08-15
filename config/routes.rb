Rails.application.routes.draw do

  # adds routes for blog posts
  resources :blogposts

  # creates index page at site route
  root 'pages#index'

  # creates page for projects
  get 'projects' => 'pages#projects'

  # creates route for contact page
  get 'contact' => 'pages#contact'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
