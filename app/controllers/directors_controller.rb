class DirectorsController < ApplicationController
	def edit_form
		@director = Director.find_by({ :id => params["id"] })
	end

	def update_row
		@director = Director.find_by({ :id => params["id"] })

		@director.name = params["the_name"]
		@director.image_url = params["the_image_url"]
		@director.bio = params["the_bio"]
		@director.dob = params["the_dob"]

		@director.save
	end

	def create_row
		@director = director.new

		@director.name = params["the_name"]
		@director.image_url = params["the_image_url"]
		@director.bio = params["the_bio"]
		@director.dob = params["the_dob"]

		@director.save
	end

	def new_form
		
	end

	def index
		@directors = Director.all
	end

	def show
		@director = Director.find_by({ :id => params["id"] })
	end

	def destroy
		@director = Director.find_by({ :id => params["id"] })

		@director.destroy
	end
end
