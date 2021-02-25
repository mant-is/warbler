Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
  
  root 'peeps#index'

  resources :peeps

end
