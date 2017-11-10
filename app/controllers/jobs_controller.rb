class JobsController < ApplicationController
before_action :authenticate_user!,only: [:new,:create,:edit,:update,:destroy]

    def index
        @jobs = Job.all;
    end
    def show
        @job = Job.find(params[:id])
    end
    def new
        @job = Job.new
    end
    def create
        @job = Job.new(jobs_params)
        if @job.save
            redirect_to jobs_path
        else
            render :new
        end
    end
    def edit
        @job = Job.find(params[:id])
    end
    def update
        @job = Job.find(params[:id])
        if  @job.update(jobs_params)
            redirect_to jobs_path
        else
            render :edit
        end
    end
    def destroy
        @job = Job.find(params[:id])
        @job.destroy
        redirect_to jobs_path
    end
    private
        def jobs_params
            params.require(:job).permit(:title,:description,:wage_upper_bound,:wage_lower_bound,:contact_email)
        end
end
