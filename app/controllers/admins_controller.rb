class AdminsController < ApplicationController
  before_action :set_user
  before_action :admin?

  # PUT /create/admin/id
  def update
    @user.update(user_params)
    head :no_content
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:admin)
  end
end
