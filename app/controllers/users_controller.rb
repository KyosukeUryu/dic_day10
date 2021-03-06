class UsersController < ApplicationController
  class UsersController < ApplicationController
    def index
      @blogs = Blog.all
    end
    
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      #binding.irb
      if @user.save
        redirect_to user_path(@user.id)
      else
        render 'new'
      end
    end
  
    def show
      @user = User.find(params[:id])
    end
  
    private
  
    # def correct_user
    #   @user = User.find(params[:id])
    #   redirect_to(root_path) unless current_user?(@user)
    # end
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end
end
