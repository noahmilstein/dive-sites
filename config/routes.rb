Rails.application.routes.draw do
  devise_for :users do
  end
  resources :users, only: [] do
    collection do
      get '/search', to: 'users#search', as: 'search'
    end
    resources :dives
  end
end
