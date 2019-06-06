Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects do
    resources :favorites, only: [:create]
  end
  resources :favorites, only: [:index]

  get 'step1', to: "wizards#step1", as: :step1
  get 'step2', to: "wizards#step2", as: :step2
  get 'step3', to: "wizards#step3", as: :step3

  resources :orders, only: [:create] do
    resources :payments, only: [:new, :create]
  end

end



