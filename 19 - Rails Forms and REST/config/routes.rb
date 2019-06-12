Rails.application.routes.draw do
  resources :textbooks
  resources :cohorts do
    resources :students, except: [:destroy]
  end
  # get "/students", to: "students#index", as: :students
  resources :students, except: [:destroy]

  # NAMING CUSTOM ROUTES
  # get "/", to: "cohorts#welcome", as: :welcome
  # get "/login", to: "sessions#new", as: :login

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
