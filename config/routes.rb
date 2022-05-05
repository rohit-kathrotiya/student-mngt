Rails.application.routes.draw do
  resources :blogs
  resources :projects
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'welcome#index'

  resources :students

  get "welcome/about"

  get "/about" => "welcome#about"

end
