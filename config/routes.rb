Rails.application.routes.draw do
	resources :posts  do
           resources :users
     end 
    get 'posts/index'
    get 'posts/login', to: 'posts#login'
    root 'posts#index'
    resources :uers

    get 'users/profile' , to: 'users#profile'
    get 'users/show' , to: 'users#show'
    get 'users/index' , to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
