class PrPerformanceReviewsController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_pr_performance_review, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :pr_performance_review

  # GET /pr_performance_reviews
  def index
    @q = @pr_performance_reviews.search params[:q]
    @pr_performance_reviews = @q.result.page(params[:page])

    # scope..
    @pr_performance_reviews = @pr_performance_reviews.ondeck
        
  end

  # GET /pr_performance_reviews/1
  def show
  end

  # GET /pr_performance_reviews/new
  def new
  end

  # GET /pr_performance_reviews/1/edit
  def edit
  end

  # POST /pr_performance_reviews
  def create
    respond_to do |format|
      if @pr_performance_review.save
        format.html { redirect_to @pr_performance_review, notice: t('success_create') }
        format.json { render :show, status: :created, location: @pr_performance_review }
      else
        format.html { render :new }
        format.json { render json: @pr_performance_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pr_performance_reviews/1
  def update
    respond_to do |format|
      if @pr_performance_review.update(pr_performance_review_params)
        format.html { redirect_to @pr_performance_review, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @pr_performance_review }
      else
        format.html { render :edit }
        format.json { render json: @pr_performance_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pr_performance_reviews/1
  def destroy
    @pr_performance_review.destroy
    respond_to do |format|
      format.html { redirect_to pr_performance_reviews_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def pr_performance_review_params
    params.require(:pr_performance_review).permit(:assigned_to_reviewer, :employee_id, :review_date, :strengths, :opportunities, :development_growth, :hr_comment, :employee_comment, :sigpad_employee, :sigpad_supervisor, :sigpad_hr, :supervisor_approval, :hr_manager_approval, :dept_manager_approval, :scheduling_date, :sort_order, :active_status)
  end
end
