Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/nelson', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"

  devise_for :users,
    controllers: { registrations: 'users/registrations', omniauth_callbacks: 'users/omniauth_callbacks'}

  scope '(:locale)', locale: /fr/ do #to use i18n | change /fr/ to /fr|es/ to add spanish
    get 'NovemberIsTheNewCool', to: 'pages#NovemberIsTheNewCool', as: :novemberisthenewcool

    resources :crews, only: [:edit, :update]
    resources :missions, only: [:index, :edit, :update, :new, :show, :create]
    #to change the status of a mission
    get '/missions/:id/suspend', to:'missions#suspend', as: 'suspend_mission'
    get '/missions/:id/close', to:'missions#close', as: 'close_mission'
    get '/missions/:id/cancel', to:'missions#cancel', as: 'cancel_mission'

    resources :packers, only: [:edit, :update, :show]

    authenticated :user do
      root 'pages#room', as: :authenticated_root
      get '/home', to: 'pages#home', as: :authentificated_home
    end
    root to: 'pages#home'


  end

end
