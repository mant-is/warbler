Rails.application.routes.draw do

  root 'peeps#index'

  resources :peeps

end
