Rails.application.routes.draw do  

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :cursos
  resources :asignaturas
  resources :trabajocasas
  get '/trabajocasas/new/:c', to: 'trabajocasas#new', as: 'trabajocasas_new'

  post '/reload_trabajos', to: 'trabajocasas#reload_trabajos', as: 'reload_trabajos'
end
