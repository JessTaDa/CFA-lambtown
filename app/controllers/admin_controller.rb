class AdminController < ApplicationController
before_action :authenticate_admin, only: :index

  def index
    @users = User.all
    @posts = Post.all
  end

private

  def authenticate_admin
    if current_user.user_type != 'admin'
       redirect_to root_path, notice: 'Access DENIED'
    end
  end
end
