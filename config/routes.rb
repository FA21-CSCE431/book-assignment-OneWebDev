Rails.application.routes.draw do
  resources :books
  get '/books/:id/custom_delete', to: 'books#custom_delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
