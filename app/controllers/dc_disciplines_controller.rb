class DcDisciplinesController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_dc_discipline, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :dc_discipline

  # GET /dc_disciplines
  def index
    @q = @dc_disciplines.search params[:q]
    @dc_disciplines = @q.result.page(params[:page])
  end

  # GET /dc_disciplines/1
  def show
  end

  # GET /dc_disciplines/new
  def new
  end

  # GET /dc_disciplines/1/edit
  def edit
  end

  # POST /dc_disciplines
  def create
    respond_to do |format|
      if @dc_discipline.save
        format.html { redirect_to @dc_discipline, notice: t('success_create') }
        format.json { render :show, status: :created, location: @dc_discipline }
      else
        format.html { render :new }
        format.json { render json: @dc_discipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dc_disciplines/1
  def update
    respond_to do |format|
      if @dc_discipline.update(dc_discipline_params)
        format.html { redirect_to @dc_discipline, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @dc_discipline }
      else
        format.html { render :edit }
        format.json { render json: @dc_discipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dc_disciplines/1
  def destroy
    @dc_discipline.destroy
    respond_to do |format|
      format.html { redirect_to dc_disciplines_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def dc_discipline_params
    params.require(:dc_discipline).permit(:StfEmployee_id, :DateDiscipline, :DisciplineBy, :DcLevel_id, :DcStream_id, :InfractionDescription, :DcAction, :DcComment, :output, :sort_order, :active_status)
  end
end
