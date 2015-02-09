class HoodsController < ApplicationController
	def index
		if current_user
			@user = current_user
		else
			redirect_to root_path
		end
		@hoods = Hood.all
	end

	def show
		@hood = Hood.find(params[:id])
		@user = User.find(session[:user_id])
		@needs = @hood.needs
	end
end
