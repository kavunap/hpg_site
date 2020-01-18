class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user
  end

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
    end
  def check_user
    unless current_user && current_user.user_type == 'admin'
      redirect_to root_url, notice: 'You are not allowed to access this page'
    end
  end

end
