class SongController < ApplicationController
	def index
		@user = User.find_by(id: session[:logged_in_as])
		@songs = Song.all
		@song = Song.new
	end

	def create
		song = Song.new(params.require(:song).permit(:title, :artist))
		if !song.valid?
			@song = song;
			return render "index"
		end
		song.save

		redirect_to "/songs"
	end

	def show
		@song = Song.find_by(id: params[:id])
		@lists = List.where(song_id: params[:id])
		# @users = Song.find(params[:id]).users
	end

	def update
		song = Song.find_by(id: params[:id])
		count = song[:add_count] + 1
		song.update_attributes(add_count: count)
		song.save

		list = List.find_by(user_id: session[:logged_in_as], song_id: params[:id])
		if List.exists?(list)
			times = list[:times_added] + 1
			list.update_attributes(times_added: times)
			list.save
		else
			List.create(user_id:session[:logged_in_as], song_id:params[:id])
		end
		redirect_to "/songs"
	end
end
