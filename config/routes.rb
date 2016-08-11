Rails.application.routes.draw do
  # creates index page
  get 'pages/index'
  root 'pages#index'

  # creates page for projects
  get 'projects' => 'pages#projects'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
