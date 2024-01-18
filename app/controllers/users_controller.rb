class UsersController < ApplicationController
  before_action :set_product, only: %i[ edit update ]
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(product_params)
        format.html { redirect_to product_url(@product), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_product
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
