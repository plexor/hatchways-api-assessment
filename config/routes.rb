Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    get "/ping", to: "pings#index"
    get "/posts", to: "posts#index"
  end

end
