class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:sessionses][:type] == "Applicant"
      user = Applicant.find_by(email: params[:sessionses][:email])
      if user && user.authenticate(params[:sessionses][:password])
        session[:current_user_id] = user.id
        session[:user_type] = "Applicant"
        redirect_to(jobs_path)
      end

    elsif params[:sessionses][:type] == "Company"
         user = Company.find_by(email: params[:sessionses][:email])
         if user && user.authenticate(params[:sessionses][:password])
           session[:current_user_id] = user.id
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
