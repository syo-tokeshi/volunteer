Rails.application.routes.draw do
  root 'homes#home'
  get "home" => "homes#home"
  resources :posts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
