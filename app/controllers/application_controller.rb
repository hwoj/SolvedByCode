class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    @current_user_type ||= session[:user_type] if session[:user_type]
    if @current_user_type == "Applicant"
      @current_user ||= Applicant.find(session[:current_user_id]) if session[:current_user_id]
      else if @current_user_type == "Company"
           @current_user ||= Company.find(session[:user_id]) if session[:user_id]
         end
    end
  end

  def logged_in?
    !!@current_user
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end



end
