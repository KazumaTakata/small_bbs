Rails.application.routes.draw do
  get 'searchs/new'
  get 'searchs/show'
  get 'sessions/new'
  get 'users/new'
  root 'homes#main'
  get  '/new' ,to: 'homes#new'
  get  '/search' ,to: 'searchs#new'
  get '/search/result' ,to: 'searchs#show'

  post '/', to: 'homes#create'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get   ':id', to: 'homes#show'
  post  ':id/posts', to: 'posts#create'
  resources :users


end
