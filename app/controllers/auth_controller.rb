class AuthController < ApplicationController

    def login
        # byebug
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            token = JWT.encode({user_id: user.id}, ENV["secret_key"])
            render json: {user: user, token: token}
        else 
            render json: {errors: "Wrong email or password"}
        end
    end

    def auto_login
        if session_user
            render json: session_user
        else
            render json: {errors: user.errors.full_messages}
        end
    end

end