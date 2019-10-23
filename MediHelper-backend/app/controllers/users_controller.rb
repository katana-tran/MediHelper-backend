class UsersController < ApplicationController

    def index
        @users = User.all
        render :json => @users
    end

    def edit_user_token 
        @user = User.find_by(id: params["userID"])
        @user.update(token: params["token"])
        render :json => @user
    end

    def create
        @user = User.find_by(username: params["userData"]["id"])
        if @user == nil 
            @my_user = User.new(name: params["userData"]["name"], username: params["userData"]["id"], img_url: params["userData"]["picture"]["data"]["url"], email:params["userData"]["email"])
            @my_user.save
        else 
            @my_user = @user
        end

        render :json => @my_user
    end

end
