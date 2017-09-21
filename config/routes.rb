Rails.application.routes.draw do

  get 'home/index' => 'home#index'

  resources :appointments

  devise_for :trainers, path: 'trainers', controllers: {
         sessions: 'trainers/sessions',
         registrations: 'trainers/registrations',
         passwords: 'trainers/passwords',
         confirmations: 'trainers/confirmations',
         unlocks: 'trainers/unlocks',
         # omniauth_callbacks: 'trainers/omniauth_callbacks'
       }
  devise_for :users, path: 'users', controllers: {
         sessions: 'users/sessions',
         registrations: 'users/registrations',
         passwords: 'users/passwords',
         confirmations: 'users/confirmations',
         unlocks: 'users/unlocks',
         # omniauth_callbacks: 'users/omniauth_callbacks'
       }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
