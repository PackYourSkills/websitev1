Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/nelson', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"

  devise_for :users,
    controllers: { registrations: 'users/registrations', omniauth_callbacks: 'users/omniauth_callbacks'}


  authenticated :user do
    root 'pages#room', as: :authenticated_root
    get '/home', to: 'pages#home', as: :authentificated_home
  end

  scope '(:locale)', locale: /fr/ do #to use i18n | change /fr/ to /fr|es/ to add spanish
    root to: 'pages#home'
    get '/home', to: 'pages#home'
  end


  ## temporary #########
  get 'NovemberIsTheNewCool', to: 'missions#index', as: :novemberisthenewcool
  get 'fr/NovemberIsTheNewCool', to: 'missions#index'
  #######################

  ## temporary #########
#  get 'NovemberIsTheNewCool', to: 'pages#NovemberIsTheNewCool', as: :novemberisthenewcool
#  get 'fr/NovemberIsTheNewCool', to: 'pages#NovemberIsTheNewCool'
  #######################

  get 'IAmAPacker', to: 'pages#IAmAPacker', as: :iamapacker
  get 'IAmACrew', to: 'pages#IAmACrew', as: :iamacrew

#  get 'IAmAPacker', to: 'pages#NovemberIsTheNewCool', as: :iamapacker
#  get 'IAmACrew', to: 'pages#NovemberIsTheNewCool', as: :iamacrew

  resources :crews, only: [:edit, :update]
  resources :missions, only: [:index, :edit, :update, :new, :show, :create] do
    resources :connections, only: [:new, :create, :edit, :show, :index, :destroy, :update]
  end
  #to change the status of a mission
  get '/missions/:id/suspend', to:'missions#suspend', as: 'suspend_mission'
  get '/missions/:id/close', to:'missions#close', as: 'close_mission'
  get '/missions/:id/cancel', to:'missions#cancel', as: 'cancel_mission'
  #to change the status of a connection
  get '/missions/:mission_id/connections/:id/accept', to:'connections#accept', as: 'accept_connection'
  get '/missions/:mission_id/connections/:id/refuse', to:'connections#refuse', as: 'refuse_connection'
  get '/missions/:mission_id/connections/:id/cancel', to:'connections#cancel', as: 'cancel_connection'
  get '/missions/:mission_id/connections/:id/confirm', to:'connections#confirm', as: 'confirm_connection'

  resources :packers, only: [:edit, :update, :show]

end
