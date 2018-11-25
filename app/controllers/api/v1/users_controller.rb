class Api::V1::UsersController < ApplicationController
    

    def create
        puts "User Create #{params}"
        user = User.new(username: params[:username], password: params[:password])
        if user.save 
            render json: {username: user.username, token: issue_token({id: user.id}), id: user.id}
        else
            render json: {error: "user could not be created!"}, status: 400
        end
    end

    def login
        # puts "Beginning of login #{params[:username]}"
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            # puts "Inside if statement #{user}"
          render json: {username: user.username, token: issue_token({id: user.id}), id: user.id}
        else
          render json: {error: 'Invalid username/password combination.'}, status: 400
        end
    end

    def validate
        puts "VALIDATION ROUTE: #{params}"
        user = get_current_user
        puts "***VALIDATION ROUTE USER OBJECT***: #{user}"
        if user
          render json: {username: user.username, token: issue_token({id: user.id}), id: user.id }
        else
          render json: {error: 'User not found.'}, status: 400
        end
    end

    def get_broadcasts
        puts "GET BROADCASTS: #{params}"
        user = get_current_user
        if user
          render json: user.broadcasts
        else
          render json: {error: 'You are not signed in.'} 
        end  
    end 
    # /////////////////////////////////////////////////

    def index 
        @users = User.all 
        render json: @users
    end 
      
    

    def show 
        @user = User.find_by(id: params[:id])
        if @user
          render json: @user
        else 
          render json: {error: "user not found"}, status: 404
        end
    end

    private 

    def user_params 
        params.require(:user).permit(:username, :password)
    end 

end



