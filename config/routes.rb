Rails.application.routes.draw do

  devise_for :users
  root 'peeps#index'

  resources :peeps

end
