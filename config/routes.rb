Rails.application.routes.draw do
  root 'rounds#index'
  devise_for :users

  resources :rounds, only: [:index, :show, :new, :create] do
    collection do
      get :add_golfer
    end
  end

  namespace :api do
    namespace :v1 do
      resources :rounds, only: [:show]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
