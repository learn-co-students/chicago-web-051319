Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tools, except: [:destroy]
  resources :users, except: [:index]
  get '/', to: 'tools#index', as: 'home'
end
