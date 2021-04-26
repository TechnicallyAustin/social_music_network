require 'pry'
class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    def index
        @user = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save        if @user.save
            session[:user_id] = @user.id
            render :show
        else
            redirect_to '/signup'
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        if @user.valid?
            @user.save
        else
            render :edit
        end

    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email_address, :password)
    end

    def set_user
        @user = User.find(params[:id])
    end

end

