Rails.application.routes.draw do
<<<<<<< Updated upstream
  # devise_for :users
  root to: 'tasks#index'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks do
  end
=======
  devise_for :users
  root to: 'tasks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks, only: :index
>>>>>>> Stashed changes
end
