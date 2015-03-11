class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include LoginsHelper
  before_action :require_login

  def logged_in?
    !current_user.nil?
  end


  def current_user
    @current_user ||= Developer.find_by(id: session[:developer_id])
  end


  private def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_login_url # halts request cycle
    end
  end

end
