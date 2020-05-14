Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'contacts' => 'contacts#new'
  resources :contacts, only: [:new, :create], path_names: { :new => ''}

  resources :articles do
    resources :comments
  end


  resources :terms, only: [:index]
  resources :about, only: [:index]


end
