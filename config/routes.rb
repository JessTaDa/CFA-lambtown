Rails.application.routes.draw do
  get 'admin/index'

  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"

  resources :posts do
    resources :comments
  end

  #     #makes routes fo all comments to be inside each post

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } do
      delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end



  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
