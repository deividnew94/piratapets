Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
