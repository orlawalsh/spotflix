class ListsController < ApplicationController
	before_action :find_song
	before_action :find_list, only: [:show, :edit, :update, :destroy]

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
		@lists = List.where(song_id: @song).order("created_at DESC").reject{|e| e.id == @list.id}

	end

	def edit

	end

	def update
		if @list.update list_params
			redirect_to song_list_path(@song, @list), notice: "Song updated!"
		else 
			render 'edit'
		end
	end

	def destroy
		@list.destroy
		redirect_to root_path

		
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
