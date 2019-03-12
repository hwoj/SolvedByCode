class JobsController < ApplicationController
  def new
    if @current_user_type != "Company"
      redirect_to login_path
      flash[:danger] = "Please sign in as a company to post a job"
    else
      @job = Job.new
    end
  end

  def create
    @job = Job.new(job_params)
    @job.company_id = @current_user
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
    if @job.company_id == @current_user && @current_user_type == "Company"
      @job.destroy
    else
      redirect_back(fallback_location: login_path)
      flash[:danger] = "You must be signed in as this user to delete their jobs"
    end

  end
  def index
    @jobs = Job.all
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :company_id, :location, :field, :pay, :job_type, :experience_level, :technologies => [])
  end
  end
