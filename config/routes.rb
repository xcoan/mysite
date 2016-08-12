Rails.application.routes.draw do
  # creates index page
  get 'pages/index'
  root 'pages#index'

  # creates page for projects
  get 'projects' => 'pages#projects'

  # creates route for contact page
  get 'contact' => 'pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
