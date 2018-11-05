class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:success] = "Article was successfully created"
      redirect_to job_path(@job)
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :company, :location, :technologies, :field, :pay)
  end
end
