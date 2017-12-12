class EmployeesController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_employee, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :employee

  # GET /employees
  def index
    @q = @employees.search params[:q]
    @employees = @q.result.page(params[:page])
  end

  # GET /employees/1
  def show
  end

  # GET /employees/new
  def new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  def create
    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: t('success_create') }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def employee_params
    params.require(:employee).permit(:name, :clock, :active_status, :sort)
  end
end
