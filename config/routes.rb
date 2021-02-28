Rails.application.routes.draw do
  root "peeps#index"
  resources :peeps
  devise_for :users, controllers: { registrations: 'registrations' }
end
