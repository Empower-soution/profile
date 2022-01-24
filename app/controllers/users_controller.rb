class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  # edit user
  def edit
    @user = User.find_by_id(params[:id])
  end
  
  # update user 
  def update
   respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'user was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end
  
  # delete user
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_path, notice: 'user was successfully destroyed.' }      
    end
  end

  
  private

  def set_user
    @user = User.find(params[:id])
  end

end
