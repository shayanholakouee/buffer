Rails.application.routes.draw do
  resources :posts
  #Index page
  root "main#index"

  #About Page
  get "/about_us"   => "about#index", as: :about

  #Sign Up 
  get '/sign_up'    => "registrations#new"
  post "/sign_up"   => "registrations#create"

  #Sign In
  get "/sign_in"    => "session#new"
  post "/sign_in"   => "session#create"

  #Logout
  delete '/logout'  => "session#destroy"

  #Update Password
  get "/password"   => "passwords#edit", as: :edit_password
  patch "/password" => "passwords#update", as: :update_password

  #Forgot password
  get "/password/reset" => "password_resets#new"
  post "/password/reset" => "password_resets#create"


end
