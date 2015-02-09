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
        if params.include?(:hood) #if params then reassign Hood
          @user.hood = Hood.find(params[:hood][:id])
          @user.save
        elsif @user.hood #if there were no params and the user has a hood do nothing
          #do nothing
        else
          redirect_to hoods_path, :notice => "Please pick your Hood first!"
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

# if there is no user Hood and there are parameters than assign the params and save.
# if there is no user hood and no params then redirect_
# if there is a user hood with or without params do nothing