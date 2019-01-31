class ApplicantsController < ApplicationController
  def new
    @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.new(applicant_params)
    if @applicant.save
      flash[:success] = "Thank you for signing up for SolvedByCode"
      redirect_to jobs_path
    else
      render 'new'
    end
  end

  private
  def applicant_params
    params.require(:applicant).permit(:name, :email, :password, :resume)
  end
end
