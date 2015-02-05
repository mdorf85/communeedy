class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    # binding.pry
    if current_user
      if params[:id] != current_user.id.to_s
        redirect_to root_path
      else
        @user = current_user
        # binding.pry
        if !@user.hood
          redirect_to hoods_path
        end
      end
    else
      redirect_to root_path
    end
  end

  def current
    @user = current_user
    render :show
  end
end
