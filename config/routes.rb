Rails.application.routes.draw do
  root to: 'questions#index'
  devise_for :users

  resources :users, :only => [:index, :show]
  resources :questions do
    resources :comments
    resources :responses
  end
end
