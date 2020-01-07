Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    #student
    get "/students" => "students#index"
    post "/students" => "students#create"
    get "/students/:id" => "students#show"
    patch "/students/:id" => "students#update"

    #expererience 
    get "/experience" => "experiences#index"
    get "/experience/:id" => "experiences#show"
    post "/experience" => "experiences#create"
    patch "/experience/:id" => "experiences#update"
    delete "/experience" => "experiences#destroy"
  end
end
