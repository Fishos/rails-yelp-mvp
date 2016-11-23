Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "restaurants#index"
  resources :restaurants do
    collection do
      get "top", to: "restaurants#top"
    end

    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end

end
