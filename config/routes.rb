Rails.application.routes.draw do
  root to: "pages#home"
  get "about", to: "pages#about"
  
  get "user_profile", to: "users/profiles#show", as: :user_profile
  get "admin_profile", to: "admin/profiles#show", as: :admin_profile

  devise_for :users, controllers: {
    confirmations:      'users/confirmations',
    passwords:          'users/passwords',
    registrations:      'users/registrations',
    sessions:           'users/sessions',
    unlocks:            'users/unlocks'
  }

  devise_for :admins, controllers: {
    confirmations:      'admins/confirmations',
    passwords:          'admins/passwords',
    registrations:      'admins/registrations',
    sessions:           'admins/sessions',
    unlocks:            'admins/unlocks'
  }  
end
