Rails.application.routes.draw do
  # sessions routes
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :modulos do
    resources :lessons
  end

end
