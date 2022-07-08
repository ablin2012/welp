class Api::SessionsController < ApplicationController
    before_action :require_logged_in, only:[:destroy]
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
        if logged_in?
            logout!
            render {}
        else
            render json: ['no user logged in'], status: 404
        end
    end
end
