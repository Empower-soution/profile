Rails.application.routes.draw do
  get 'users/index'
# devise_for :users
devise_for :users do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
resources :users
root to: "home#index"
# devise_for :user, :path => 'users', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
 
end
