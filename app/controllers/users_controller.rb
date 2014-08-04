class UsersController < ApplicationController
  def new
  	@users = User.new

  end
def create
    @users = User.new(user_params)    # Not the final implementation!
    if @users.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @users

    else
      render 'new'
    end
  end
def show
  	 @users = User.find(params[:id])

  end

private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
  
end
