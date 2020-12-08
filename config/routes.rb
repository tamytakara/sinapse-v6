Rails.application.routes.draw do
  resources :materia
  resources :resolutions
  resources :votos
  resources :alternativas
  resources :answers
  resources :questions
  resources :provas
  resources :simulados
  resources :ambitions
  resources :admission_exams
  resources :universidades
  resources :courses
  resources :universitarios
  resources :vestibulandos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
