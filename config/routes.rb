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
  root :to => 'web#index'
  get 'signup', :to => 'users#new'
  get 'login', :to => 'web#index'
  get 'logout', :to => 'web#logout'
  get 'home', :to => 'web#administrador'
  get 'profile', :to => 'web#profile'
  get 'setting', :to => 'web#setting'
  post 'login_attempt', :to => 'web#login_attempt'

  get "historia/:id/show", :controller => "historia", :action => "check_historias"

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
