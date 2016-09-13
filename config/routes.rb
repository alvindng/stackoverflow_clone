Rails.application.routes.draw do
  root 'users#new'
  resources :users
  resources :sessions
  delete '/logout' => 'sessions#destroy'
  resources :questions do
    resources :answers
  end
end
