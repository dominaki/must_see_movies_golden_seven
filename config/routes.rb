Rails.application.routes.draw do
  
  get("/", { :controller => "movies", :action => "home"})
  get("/directors",  { :controller => "movies", :action => "index_directors"})

  get("/directors/create_director/", { :controller => "movies", :action => "create_director"})
  get("/directors/new/", { :controller => "movies", :action => "new_director"})
  
  get("/directors/:id/edit_director", { :controller => "movies", :action => "edit_directors"})
  get("/update_director/:id", { :controller => "movies", :action => "update_director"})

  get("/directors/delete_director/:id", { :controller => "movies", :action => "destroy"})

  get("/directors/:id", { :controller => "movies", :action => "show_directors"})

  
  

end

