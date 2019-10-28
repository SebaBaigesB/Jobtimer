class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.user = current_user
    if @user.saveUser
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to projects_path(@project)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @current_user = User.where(user: current_user)
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :city, :job, :hourly_wage, :photo, :banner)
  end
end
