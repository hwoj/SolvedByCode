class CompaniesController < ApplicationController
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

  def show
    @company = Company.find(params[:id])
  end
  private

  def company_params
    params.require(:company).permit(:companyname, :email, :password, :website, :benefits, :size, :location, :description, :industries, )
  end
end
