class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:success] = "Thank you for signing up for SolvedByCode"
      redirect_to jobs_path
    else
      render 'new'
    end
  end

  private

  def company_params
    params.require(:company).permit(:companyname, :email, :password)
  end
end
