Rails.application.routes.draw do
  devise_for :users
  root to:'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do
    get :change_amount, on: :member
    post :change_amount_do, on: :member
  end
end
