class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def new
    end
    def create
    end

    def edit
      @user = User.find(params[:id])
    end

    private
    
    def user_params 
        params.require(:user).permit(:username, :email, :password) 
    end

end
