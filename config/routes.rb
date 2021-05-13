Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/teams" => "teams#index"
  post "/receive_alert/:id" => "alerts#receive_alert"
end
