Rails.application.routes.draw do
  
  get 'charts/index'
  get 'charts/show'
  get 'charts/edit'
  get 'charts/new'
  resources :artists do
  resources :songs, only: [:index, :new, :create, :destroy]
  end
end
