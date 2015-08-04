class MoviesController < ApplicationController

##List actions for Directors, Actors & Movies
def home
	render("home.html.erb")
end


def index_directors
    @list_of_directors = Director.all
  end

def index_actors
	@list_of_actors = Actors.all
end

def index_movie
	@list_of_movies = Movies.all

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

def create_row_actors

    p = Actor.new
    p.name = params["name"]
    p.bio = params["bio"]
    p.dob = params["dob"]
    p.image_url = parmas["image_url"]
    p.save

    
    redirect_to("http://localhost:3000/actors")

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


 end

