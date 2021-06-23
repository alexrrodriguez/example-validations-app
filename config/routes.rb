Rails.application.routes.draw do
  
  get "/users" => "users#index"

  get "/users" => "users#show"

  post "/users" => "users#create"

  patch "/users" => "users#update"

  delete "/users" => "users#destroy"

end
