class ListsController < ApplicationController
	before_action :find_song
	before_action :find_list, only: [:show]

	def new
		@list = @song.lists.new
	end

	def create
		@list = @song.lists.new  list_params
		if @list.save
			redirect_to song_list_path(@song, @list)
		else
			render 'new'
		end

	end
	
	def show

	end

	private 

	def list_params
		params.require(:list).permit(:title, :description)
	end

	def find_song
		@song = Song.find(params[:song_id])

	end

	def find_list
		@list = List.find(params[:id])

	end
end