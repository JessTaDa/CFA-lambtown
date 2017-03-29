Rails.application.routes.draw do
  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"

  resources :posts do
    resources :comments
  end
  # resources :posts do
  #   member do
  #     resources :comments
  #     #makes routes fo all comments to be inside each post
  #   end
  # end
  devise_for :users
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
