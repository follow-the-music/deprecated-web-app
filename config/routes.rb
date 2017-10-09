Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#login'
  get  '/choosetype',    to: 'static_pages#choosetype'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
post   '/login',   to: 'sessions#create'
delete '/logout',  to: 'sessions#destroy'
end
