Rails.application.routes.draw do  

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :cursos
  resources :asignaturas
  resources :trabajocasa
end
