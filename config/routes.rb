Rails.application.routes.draw do
# <<<<<<< HEAD
  devise_for :users do
  end
  resources :users, only: [] do
    collection do
      get '/search', to: 'users#search', as: 'search'
    end
    resources :dives
  end
# =======
#   devise_for :users
#   resources :dives
#
#   devise_scope :user do
#   authenticated :user do
#     root "dives#index", as: :authenticated_root
#   end
#   unauthenticated :user do
#     root "devise/sessions#create", as: :unauthenticated_root
#   end
# end
# >>>>>>> 5bfb3a253dd8b1c803e7b31dc7e4eb5297f079b5
end
