Rails.application.routes.draw do
  resources :hobbylists
  resources :hobbies
  get 'home/quiz'
  get 'home/aboutus'
  get 'home/hobbylist'
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


