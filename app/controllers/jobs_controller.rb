class JobsController < ApplicationController
before_action :authenticate_user!,only: [:new,:create,:edit,:update,:destroy]
before_action :validate_search_key, only: [:search]
    def index
        @jobs = case params[:order]
            when 'by_lower_bound'
                Job.published.order('wage_lower_bound DESC').paginate(:page => params[:page], :per_page => 5)
            when 'by_upper_bound'
                Job.published.order('wage_upper_bound DESC').paginate(:page => params[:page], :per_page => 5)
            else
                Job.published.recent.paginate(:page => params[:page], :per_page => 5)
            end
    end
    def show
        @job = Job.find(params[:id])
        if @job.is_hidden
            flash[:warning] = 'This job already archived'
            redirect_to root_path
        end
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

    def search
    if @query_string.present?
      search_result = Job.ransack(@search_criteria).result(:distinct => true)
      @jobs = search_result.paginate(:page => params[:page], :per_page => 5 )
    end
  end


  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "")
    if params[:q].present?
        @search_criteria = search_criteria(@query_string)
    end
  end


  def search_criteria(query_string)
    { :title_or_company_name_or_job_location_cont => query_string }
  end


    private
        def jobs_params
            params.require(:job).permit(:title,:description,:wage_upper_bound,:wage_lower_bound,:job_location,:company_name,:contact_email,:is_hidden)
        end
end
