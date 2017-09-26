Rails.application.routes.draw do

  get 'user_profiles/show'

  mount RailsAdmin::Engine => '/supersaiyan', as: 'rails_admin'

  root'home#index'

  resources :user_profiles

  resources :appointments


  devise_for :trainers, 
         path: 'trainers',
         path_names: {sign_in: 'login', sign_out: 'logout', edit: 'edit'}, 
         controllers: {
         sessions: 'trainers/sessions',
         registrations: 'trainers/registrations',
         passwords: 'trainers/passwords',
         confirmations: 'trainers/confirmations',
         unlocks: 'trainers/unlocks',
         # omniauth_callbacks: 'trainers/omniauth_callbacks'
       }
  devise_for :users, 
        path: 'users',
        path_names: {sign_in: 'login', sign_out: 'logout', edit: 'edit'},
        controllers: {
             sessions: 'users/sessions',
             registrations: 'users/registrations',
             passwords: 'users/passwords',
             confirmations: 'users/confirmations',
             unlocks: 'users/unlocks',
             # omniauth_callbacks: 'users/omniauth_callbacks'
           }

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
