Rails.application.routes.draw do
  devise_for :users
  resources :dives

  devise_scope :user do
  authenticated :user do
    root "dives#index", as: :authenticated_root
  end
  unauthenticated :user do
    root "devise/sessions#create", as: :unauthenticated_root
  end
end
end
