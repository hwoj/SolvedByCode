class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:type] == "Applicant"
      user = Applicant.find_by(email: params[:session][:email])
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        session[:user_type] = "Applicant"
        redirect_to(jobs_path)
      end

    elsif params[:type] == "Company"
         user = Company.find_by(email: params[:session][:email])
         if user && user.authenticate(params[:session][:password])
           session[:user_id] = user.id
           session[:user_type] = "Company"
           redirect_to(company_path(user))
         end
    else
      flash[:danger] = "There was something wrong with your login credentials"
      render 'new'
    end

  end

  def destroy
    session[:user_id] = nil
    session[:user_type] = nil
    flash[:success] = "You have logged out"
    redirect_to root_path
  end
end
