Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :polls, only: [:index, :show] do
    resources :votes, only: [:create]
    resources :results, only: [:index]
  end
end
