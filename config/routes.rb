Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :users, only: [:show] do
    resources :dashboard, only: [:index]
      resources :programs, only: [:index]
      resources :workouts, only: [:index]
  end
end
