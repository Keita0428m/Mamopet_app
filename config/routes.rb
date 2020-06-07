Rails.application.routes.draw do
  resources :snippets
  get 'pages/home'
  get '/posts/new', to: 'posts#new'
  post '/posts', to: 'posts#create'
  resources :posts, only: %i(index new create show destroy)
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
