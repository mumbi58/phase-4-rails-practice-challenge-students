Rails.application.routes.draw do
  resources :instructors, only: [:show, :index, :create, :destroy, :update]
  resources :students, only: [:show, :index, :create, :destroy, :update]
end
