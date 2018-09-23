Rails.application.routes.draw do  

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :cursos
  resources :asignaturas
  resources :actividads
  resources :noticias  
  resources :controls
  resources :trabajocasas
  get '/trabajocasas/new/:c', to: 'trabajocasas#new', as: 'trabajocasas_new'
  get '/controls/new/:c', to: 'controls#new', as: 'controls_new'

  post '/reload_trabajos', to: 'trabajocasas#reload_trabajos', as: 'reload_trabajos'
end
