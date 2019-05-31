Rails.application.routes.draw do
  root 'articles#new'
  resources :articles
  resources :posts
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
