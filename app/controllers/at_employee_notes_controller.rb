class AtEmployeeNotesController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_at_employee_note, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :at_employee_note

  # GET /at_employee_notes
  def index
    @q = @at_employee_notes.search params[:q]
    @at_employee_notes = @q.result.page(params[:page])
  end

  # GET /at_employee_notes/1
  def show
  end

  # GET /at_employee_notes/new
  def new
  end

  # GET /at_employee_notes/1/edit
  def edit
  end

  # POST /at_employee_notes
  def create
    respond_to do |format|
      if @at_employee_note.save
        format.html { redirect_to @at_employee_note, notice: t('success_create') }
        format.json { render :show, status: :created, location: @at_employee_note }
        @at_employee_note.user = current_user
      else
        format.html { render :new }
        format.json { render json: @at_employee_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /at_employee_notes/1
  def update
    respond_to do |format|
      if @at_employee_note.update(at_employee_note_params)
        format.html { redirect_to @at_employee_note, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @at_employee_note }
      else
        format.html { render :edit }
        format.json { render json: @at_employee_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /at_employee_notes/1
  def destroy
    @at_employee_note.destroy
    respond_to do |format|
      format.html { redirect_to at_employee_notes_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def at_employee_note_params
    params.require(:at_employee_note).permit(:name_if_not, :employee_id, :issue, :date_if_not_today, :user_id)
  end
end
