Rails.application.routes.draw do
  get 'posts/index'
  get "posts/new"
  get 'posts/:id', to:'posts#show'

  post "posts/create"
  get "posts/:id/edit", to:"posts#edit"
  post "posts/:id/update", to:"posts#update"
  post "posts/:id/destroy", to:"posts#destroy"

  # get 'home/top'
  get '/', to:'home#top'
  get 'about', to:'home#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
