class Api::SessionsController < ApplicationController
    def create
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
        if @user
            login!(@user)
            redirect_to api_user_url(@user)
        else
            render json: ['invalid user credentials'], status: 422
        end
    end

    def destroy
        @user = current_user
        if logged_in?
            logout!
            render "api/users/show"
        else
            render json: ['no user logged in'], status: 404
        end
    end
end
