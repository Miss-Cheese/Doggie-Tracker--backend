class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, status: :ok
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.new(
            email: params[:email],
            name: params[:name],
            password: params[:password]
        )
        if user.save
            token = JWT.encode({user_id: user.id}, ENV["secret_key"])
            render json: {user: user, token: token}
        else
            render json: {errors: user.errors.full_messages}
            # render json: { errors: "Something went wrong, please try again." }, status: :not_acceptable
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    # private
    # def user_params
    #     params.require(:user).permit(:name, :email, :password)
    # end
    
end


