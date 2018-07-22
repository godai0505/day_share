Rails.application.routes.draw do
  get '/', to: 'index#index'
  resources :bookmarks
  resources :tags
  resources :labels
  resources :folders

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
