class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:success] = "Job was successfully created"
      redirect_to job_path(@job)
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
  end
  def index
    @jobs = Job.all
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :company, :location, :field, :pay, :job_type, :experience_level, :technologies => [])
  end
end
