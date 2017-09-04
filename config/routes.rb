Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/nelson', as: 'rails_admin'
  devise_for :users,
    controllers: { registrations: 'users/registrations'}

  scope '(:locale)', locale: /fr/ do #to use i18n | change /fr/ to /fr|es/ to add spanish
    get 'NovemberIsTheNewCool', to: 'pages#NovemberIsTheNewCool', as: :novemberisthenewcool
    get 'test', to: 'pages#test', as: :test

    resources :crews, only: [:edit, :update, :show]
    resources :missions, only: [:index, :new, :show, :create]
    resources :packers, only: [:edit, :update, :show]

    authenticated :user do
      root 'pages#test', as: :authenticated_root
    end
    root to: 'pages#home'
  end

  mount Attachinary::Engine => "/attachinary"
end
