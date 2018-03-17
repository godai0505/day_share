Rails.application.routes.draw do
  get '/', to: 'index#index'
  get 'sign_in', to: 'index#sign_in'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
end
