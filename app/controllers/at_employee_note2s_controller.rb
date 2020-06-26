class AtEmployeeNote2sController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_at_employee_note2, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :at_employee_note2

  # GET /at_employee_note2s
  def index
    @q = @at_employee_note2s.search params[:q]
    @at_employee_note2s = @q.result.page(params[:page])
  end

  # GET /at_employee_note2s/1
  def show
  end

  # GET /at_employee_note2s/new
  def new
  end

  # GET /at_employee_note2s/1/edit
  def edit
  end

  # POST /at_employee_note2s
  def create
    respond_to do |format|
      if @at_employee_note2.save
        format.html { redirect_to @at_employee_note2, notice: t('success_create') }
        format.json { render :show, status: :created, location: @at_employee_note2 }
      else
        format.html { render :new }
        format.json { render json: @at_employee_note2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /at_employee_note2s/1
  def update
    respond_to do |format|
      if @at_employee_note2.update(at_employee_note2_params)
        format.html { redirect_to @at_employee_note2, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @at_employee_note2 }
      else
        format.html { render :edit }
        format.json { render json: @at_employee_note2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /at_employee_note2s/1
  def destroy
    @at_employee_note2.destroy
    respond_to do |format|
      format.html { redirect_to at_employee_note2s_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def at_employee_note2_params
    params.require(:at_employee_note2).permit(:name_if_not, :employee_id, :issue, :date_if_not_today, :user_id)
  end
end
