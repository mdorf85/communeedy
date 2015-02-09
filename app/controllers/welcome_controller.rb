class WelcomeController < ApplicationController
	def index
		if current_user
			@user = current_user
		end
	end
end

#reset_session if need be for testing