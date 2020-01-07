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
    delete "/students/:id" => "students#destroy" 

    #education
    get "/education" => "education#index"
    post "/education" => "education#create"
    get "/education/:id" => "education#show"
    patch "/education/:id" => "education#update"
    delete "/education/:id" => "education#destroy"

    #experience 
    get "/experiences" => "experience#index"
    get "/experiences/:id" => "experience#show"
    post "/experiences" => "experience#create"
    patch "/experiences/:id" => "experience#update"
    delete "/experiences/:id" => "experience#destroy"

    #skills 
    get "/skills" => "skills#index"
    get "/skills/:id" => "skills#show"
    post "/skills" => "skills#create"
    patch "/skills/:id" => "skills#update"
    delete "/skills/:id" => "skills#destroy"

    # capstone
    get "/capstones" => "capstone#index"
    post "/capstones" => "capstone#create"
    get "/capstones/:id" => "capstone#show"
    patch "/capstones/:id" => "capstone#update"
    delete "/capstones/:id" => "capstone#destroy"
  end
end
