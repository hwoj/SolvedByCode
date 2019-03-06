class CompaniesController < ApplicationController
  before_action :verify_company, only: :edit

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:success] = "Thank you for signing up for SolvedByCode"
      redirect_to company_path(@company.id)
    else
      render 'new'
    end
  end

  def edit
    if Company.find(params[:id]) == @current_user && @current_user_type == "Company"
      @company = Company.find(params[:id])
    else
      redirect_back(fallback_location: login_path)
      flash[:danger] = "You must be logged in as this user to perform this action"
    end


  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      flash[:success] = "Your company has been successfully updated"
      redirect_to company_path(company.id)
    else
      render 'edit'
    end
  end
  def show
    @company = Company.find(params[:id])
  end

  private

  def company_params
    params.require(:company).permit(:companyname, :email, :password, :website, :size, :location, :description, :industries, :benefits => [] )
  end

  def verify_company
    if @current_user_type == "Company"
      if @current_user != @company || @current_user.nil?
        redirect_to login_path
        flash[:danger] = "You must be logged in as this user to perform this action"
      end
    end
  end
end
