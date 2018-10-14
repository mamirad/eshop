Rails.application.routes.draw do
  resources :beholders
  resources :sales
  resources :customers, param: :cnic
  resources :customers
  resources :products

  # this is rendering search product form where admin enter customer
  #cnic to view each defaulter customer product

  		get 'search_products', to: 'instalment#search_products'

  #after submit from move form control to controler method
		get 'searched_products', to: 'instalment#searched_products'


 get 'paydues/:saleid', to: 'instalment#paydues', as: 'paydues'

 get 'paid', to: 'instalment#paid'
  get 'view_instalment', to: 'instalment#view_instalment'


  #get 'searched', to: 'cources#searched'
  # devise_for :users
   devise_for :users, :controllers => {:sessions => "users/sessions",:registrations => "users/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'home#index'
end
