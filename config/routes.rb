Rails.application.routes.draw do
  devise_for :users
  root 'posts#index' ,as: 'home'
  get "/about", to: "pages#about" ,as:'about'

  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
