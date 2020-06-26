class EmployeeIssueNotesController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_employee_issue_note, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :employee_issue_note

  # GET /employee_issue_notes
  def index
    @q = @employee_issue_notes.search params[:q]
    @employee_issue_notes = @q.result.page(params[:page])
  end

  # GET /employee_issue_notes/1
  def show
  end

  # GET /employee_issue_notes/new
  def new
  end

  # GET /employee_issue_notes/1/edit
  def edit
  end

  # POST /employee_issue_notes
  def create
    respond_to do |format|
      # assign this record to the currently logged in user.
      @employee_issue_note.user = current_user
      if @employee_issue_note.save
        format.html { redirect_to @employee_issue_note, notice: t('success_create') }
        format.json { render :show, status: :created, location: @employee_issue_note }
      else
        format.html { render :new }
        format.json { render json: @employee_issue_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_issue_notes/1
  def update
    respond_to do |format|
      if @employee_issue_note.update(employee_issue_note_params)
        format.html { redirect_to @employee_issue_note, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @employee_issue_note }
      else
        format.html { render :edit }
        format.json { render json: @employee_issue_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_issue_notes/1
  def destroy
    @employee_issue_note.destroy
    respond_to do |format|
      format.html { redirect_to employee_issue_notes_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def employee_issue_note_params
    params.require(:employee_issue_note).permit(:issue, :employee_id, :name_if_not, :date_of_issue, :comment, :user_id)
  end
end
