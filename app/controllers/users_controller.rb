class UsersController < ApplicationController
  before_action :set_User, only: %i[show edit update destroy]

  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def edit; end

  def create
    @user = User.new(user_params)
  end

  def update
    if @user.update(user_params)
    end

    def destroy
      @User.destroy
    end

    private
    def User_params
      params.require(:user).permit(:name)
    end
  end
end
