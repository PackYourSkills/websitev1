Rails.application.routes.draw do
  # devise_for :users

  scope '(:locale)', locale: /fr/ do #to use i18n | change /fr/ to /fr|es/ to add spanish
    root to: 'pages#home'
    get 'NovemberIsTheNewCool', to: 'pages#NovemberIsTheNewCool', as: :novemberisthenewcool
  end

end
