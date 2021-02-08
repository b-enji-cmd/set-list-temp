class ArtistsController < ApplicationController
	def index
		@artists = Artist.all
	end

	def new
		
	end

	def create
		binding.pry
	end

end