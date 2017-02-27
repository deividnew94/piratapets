Rails.application.routes.draw do

  get 'sessions/home'

  get 'sessions/login'

  get 'sessions/profile'

  get 'sessions/setting'

  get 'users/new'

  get 'web/index'

  get 'web/administrador'

  get 'web/usuario'

  get 'web/doctor'

  get ':controller(/:action(/:id))(.:format)'
  root :to => 'sessions#login'
  get 'signup', :to => 'users#new'
  get 'login', :to => 'sessions#login'
  get 'logout', :to => 'sessions#logout'
  get 'home', :to => 'sessions#home'
  get 'profile', :to => 'sessions#profile'
  get 'setting', :to => 'sessions#setting'
  post 'login_attempt', :to => 'sessions#login_attempt'

  resources :servicios
  resources :promocions
  resources :productos
  resources :pacientes
  resources :historia
  resources :guarderia
  resources :doctors
  resources :comprobantes
  resources :clientes
  resources :cita
  resources :catalogos
  resources :campania
  resources :busquedas
  resources :administradors
  resources :catalogos
  resources :users
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
