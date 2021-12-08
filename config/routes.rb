Rails.application.routes.draw do
  devise_for :users

    root 'welcome#index'

  get '/sign-up' => 'registrations#new', as: :signup
  post '/sign-up' => 'registrations#create'
  get '/sign-in' => 'authentication#new', as: :signin
  post '/sign-in' => 'authentication#create'
  get '/sign-out' => 'authentication#destroy', as: :signout

  resources :conversations do
    resources :messages
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
