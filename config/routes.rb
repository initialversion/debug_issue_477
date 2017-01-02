Rails.application.routes.draw do
  # Routes for the Place_type resource:
  # CREATE
  get "/place_types/new", :controller => "place_types", :action => "new"
  post "/create_place_type", :controller => "place_types", :action => "create"

  # READ
  get "/place_types", :controller => "place_types", :action => "index"
  get "/place_types/:id", :controller => "place_types", :action => "show"

  # UPDATE
  get "/place_types/:id/edit", :controller => "place_types", :action => "edit"
  post "/update_place_type/:id", :controller => "place_types", :action => "update"

  # DELETE
  get "/delete_place_type/:id", :controller => "place_types", :action => "destroy"
  #------------------------------

  # Routes for the Place resource:
  # CREATE
  get "/places/new", :controller => "places", :action => "new"
  post "/create_place", :controller => "places", :action => "create"

  # READ
  get "/places", :controller => "places", :action => "index"
  get "/places/:id", :controller => "places", :action => "show"

  # UPDATE
  get "/places/:id/edit", :controller => "places", :action => "edit"
  post "/update_place/:id", :controller => "places", :action => "update"

  # DELETE
  get "/delete_place/:id", :controller => "places", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
