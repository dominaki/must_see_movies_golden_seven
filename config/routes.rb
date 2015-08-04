Rails.application.routes.draw do
  
  get("/", { :controller => "movies", :action => "home"})

##director routes

  get("/directors",  { :controller => "movies", :action => "index_directors"})

  get("/directors/create_director/", { :controller => "movies", :action => "create_director"})
  get("/directors/new/", { :controller => "movies", :action => "new_director"})
  
  get("/directors/:id/edit_director", { :controller => "movies", :action => "edit_directors"})
  get("/update_director/:id", { :controller => "movies", :action => "update_director"})

  get("/directors/delete_director/:id", { :controller => "movies", :action => "destroy"})

  get("/directors/:id", { :controller => "movies", :action => "show_directors"})

  
##actor routes

  get("/actors",  { :controller => "movies", :action => "index_actors"})

  get("/actors/create_actor/", { :controller => "movies", :action => "create_actor"})
  get("/actors/new/", { :controller => "movies", :action => "new_actor"})
  
  get("/actors/:id/edit_actor", { :controller => "movies", :action => "edit_actors"})
  get("/update_actor/:id", { :controller => "movies", :action => "update_actor"})

  get("/actors/delete_actor/:id", { :controller => "movies", :action => "destroy"})

  get("/actors/:id", { :controller => "movies", :action => "show_actors"})

  
##Routes for Movies

  get("/movies",  { :controller => "movies", :action => "index_movies"})

  get("/movies/create_movie/", { :controller => "movies", :action => "create_movie"})
  get("/movies/new/", { :controller => "movies", :action => "new_movie"})
  
  get("/movies/:id/edit_movie", { :controller => "movies", :action => "edit_movies"})
  get("/update_movie/:id", { :controller => "movies", :action => "update_movie"})

  get("/movies/delete_movie/:id", { :controller => "movies", :action => "destroy"})

  get("/movies/:id", { :controller => "movies", :action => "show_movies"})
end

