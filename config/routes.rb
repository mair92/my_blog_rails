Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'contacts' => 'contacts#new'
  resources :contacts, only: [:new, :create], path_names: { :new => ''}
  resources :articles
end
