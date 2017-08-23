Rails.application.routes.draw do
  # devise_for :users

  scope '(:locale)', locale: /fr/ do #to use i18n | change /fr/ to /fr|es/ to add spanish
    root to: 'pages#home'
    get 'NovemberIsTheNewCool', to: 'pages#NovemberIsTheNewCool'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
