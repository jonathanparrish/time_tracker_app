class LoginsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    developer = Developer.find_by_email(params[:email])
    if developer && developer.authenticate(params[:password])
      session[:developer_id] = developer.id
      flash[:notice] = "Welcome"
      redirect_to developers_path
    else
      flash.now[:notice] = "please re-enter your info."
      render :new
    end
  end

  def destroy
    session[:developer_id] = nil
    @current_user = nil
    redirect_to new_login_path, notice: "You have logged out."
  end
end
