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
    get "/experience" => "work_experiences#index"
    get "/experience/:id" => "work_experiences#show"
    post "/experience" => "work_experiences#create"
    patch "/experience" => "work_experiences #update"


  end
end
