class UsersController < ApplicationController

before_action :authenticate_user!, only: [:show]
before_action :authenticate_guser, only: [:show]

	def index
		@users_array = User.all
	end

	def show
		@user = User.find(params[:id])
	end

private

	def authenticate_guser
		if (current_user.id != params[:id].to_i) then
			flash[:danger] = "mauvais profil"
			redirect_to root_path
		end	
	end

end
