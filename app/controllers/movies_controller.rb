class MoviesController < ApplicationController

##List actions for Directors, Actors & Movies
def home
	render("home.html.erb")
end

##actions for directors

def index_directors
    @list_of_directors = Director.all
  end



def create_director

    d = Director.new
    d.name = params["name"]
    d.bio = params["bio"]
    d.dob = params["dob"]
    d.image_url = params["image_url"]
    d.save
    
    redirect_to("/directors")

  end

def new_director
	render("new_director.html.erb")
end
##Create actions for Directors, Actors & Movies

def show_directors
	
	@director = Director.find(params["id"])
	render("show_directors.html.erb")
end
  
 def edit_directors
    @director = Director.find(params["id"])

  end

def update_director
	  d = Director.find(params["id"])
    d.name = params["name"]
    d.bio = params["bio"]
    d.dob = params["dob"] 
    d.image_url = params["image_url"]
    d.save
    
    redirect_to("/directors")


end

def destroy
    @director = Director.find(params["id"])

    @director.destroy

    redirect_to("http://localhost:3000/directors")
  end


## ACTINOS FOR ACTORS

def index_actors
  @list_of_actors = Actor.all
end

def create_actor

    a = Actor.new
    a.name = params["name"]
    a.bio = params["bio"]
    a.dob = params["dob"]
    a.image_url = params["image_url"]
    a.save
    
    redirect_to("/actors")

  end


def new_actor
  render("new_actor.html.erb")
end
##Create actions for Directors, Actors & Movies

def show_actors
  
  @actor = Actor.find(params["id"])
  render("show_actors.html.erb")
end
  
 def edit_actors
    @actor = Actor.find(params["id"])

  end

def update_actor
    a = Actor.find(params["id"])
    a.name = params["name"]
    a.bio = params["bio"]
    a.dob = params["dob"] 
    a .image_url = params["image_url"]
    a.save
    
    redirect_to("/actors")


end

def destroy
    @actor = Actor.find(params["id"])

    @actor.destroy

    redirect_to("http://localhost:3000/actors")
  end

  ###ACTIONS FOR MOVIES
def index_movie
  @list_of_movies = Movies.all

end
 end

