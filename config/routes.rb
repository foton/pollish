Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :polls, only: [:index, :show] do
    resource :vote, controller: :vote, only: [:show, :create]
    resource :results, only: [:index]
  end
end
