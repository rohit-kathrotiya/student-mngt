Rails.application.routes.draw do
  resources :blogs
  resources :projects
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'welcome#index'

  resources :students

  # resources :students do
  #   # Define member routing (it returns data of specified id)
  #   member do
  #     get :personal_details
  #   end
  #   # get :personal_details, on: :member

  #   # Define collection routing (it returns all data)
  #   collection do
  #     get :active
  #   end
  #   # get :active, on: :collection
  # end

  get "welcome/about"

  get "/about" => "welcome#about"

  # NameSpace routing
  namespace :admin do
    resources :students
  end
  
  # Scope Routing
  # scope module: :admin do
  #   resources :students
  # end

end
