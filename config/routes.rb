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
    get 'NovemberIsCoolAgain', to: 'pages#NovemberIsCoolAgain', as: :novemberiscoolagain
  end

  get "/CallMaxime" => redirect("https://calendly.com/maximebdb/packyourskills")
  get "/joinourteam" => redirect("https://medium.com/@maxime_bdb/pack-your-skills-rejoignez-laventure-65a7e22a407"), as: :joinus

  ## BLOG
  get "/blog", to: redirect('http://www.packyourskills.com/blog/', status: 301)
  # get "/blog" => redirect("https://medium.com/pack-your-skills")

  ## temporary #########
  get 'NovemberIsTheNewCool', to: 'pages#NovemberIsCoolAgain', as: :novemberisthenewcool
  get 'fr/NovemberIsTheNewCool', to: 'pages#NovemberIsCoolAgain'
  get 'AprilIsComing', to: 'pages#NovemberIsCoolAgain', as: :apriliscoming
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
  get '/missions/:id/validate', to:'missions#validate', as: 'validate_mission'
  get '/missions/:id/suspend', to:'missions#suspend', as: 'suspend_mission'
  get '/missions/:id/close', to:'missions#close', as: 'close_mission'
  get '/missions/:id/cancel', to:'missions#cancel', as: 'cancel_mission'
  #to change the status of a connection
  get '/missions/:mission_id/connections/:id/accept', to:'connections#accept', as: 'accept_connection'
  get '/missions/:mission_id/connections/:id/refuse', to:'connections#refuse', as: 'refuse_connection'
  get '/missions/:mission_id/connections/:id/cancel', to:'connections#cancel', as: 'cancel_connection'
  get '/missions/:mission_id/connections/:id/confirm', to:'connections#confirm', as: 'confirm_connection'
  get '/missions/:mission_id/connections/:id/put_online', to:'connections#put_online', as: 'put_online_connection'
  get '/missions/:mission_id/connections/:id/put_draft', to:'connections#put_draft', as: 'put_draft_connection'
  get '/missions/:mission_id/connections/:id/put_for_admin_validation', to:'connections#put_for_admin_validation', as: 'put_for_admin_validation_connection'

  resources :packers, only: [:edit, :update, :show]


end
