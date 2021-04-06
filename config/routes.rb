Rails.application.routes.draw do
  devise_for :customers, controllers: {
    confirmations: 'customers/confirmations',
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }
  devise_for :producers, controllers: {
    confirmations: 'producers/confirmations',
    sessions:      'producers/sessions',
    passwords:     'producers/passwords',
    registrations: 'producers/registrations'
  }
  root to: "introductions#index"
  resources :producers, only: :show
  resources :products do
    collection do
      get 'search'
    end
  end
  
end
