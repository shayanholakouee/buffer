Rails.application.routes.draw do
  #Index page
  root "main#index"

  #About Page
  get "/about_us" => "about#index", as: :about
  
  #Sign Up 
  get '/sign_up'  => "registrations#new"
  post "/sign_up" => "registrations#create"

end
