Rails.application.routes.draw do  

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :cursos
  resources :asignaturas
  resources :actividads
  resources :noticias  
  resources :controls
  resources :temas
  resources :trabajocasas
  get '/trabajocasas/new/:c', to: 'trabajocasas#new', as: 'trabajocasas_new'
  get '/controls/new/:c', to: 'controls#new', as: 'controls_new'

  
  get '/admin/temas', to: 'admin#temas', as: 'admintemas'
  get '/admin/actividades', to: 'admin#actividades', as: 'adminactividades'

  post '/reload_trabajos', to: 'trabajocasas#reload_trabajos', as: 'reload_trabajos'
  post '/edit_tema', to: 'admin#render_temas', as: 'tema_edit'
  post '/edit_actividad', to: 'admin#render_actividades', as: 'actividad_edit'
end
