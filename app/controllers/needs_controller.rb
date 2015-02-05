class NeedsController < ApplicationController
	def new
		@need = Need.new
	end

	def create
		@need = Need.new(need_params)
		@user = User.find(session[:user_id])
		@hood = Hood.find(@user.hood)
		@user.needs << @need
		@hood.needs << @need
		@user.save
		@hood.save
		redirect_to user_path(@user.id)
	end


private
	def need_params
		 params.require(:need).permit(:title, :reason)
	end
end


