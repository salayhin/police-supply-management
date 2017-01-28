Rails.application.routes.draw do

  resources :requisitions
  devise_for :users, path_names: { sign_up: 'register' },
             controllers: {  sessions:            'sessions',
                             registrations:       'registrations',
                             passwords:           'passwords'
             }

  namespace :admin do
    get 'dashboard' => 'dashboard#index'
    resources :users
    resources :items
  end

  root to: 'admin/dashboard#index'
end
