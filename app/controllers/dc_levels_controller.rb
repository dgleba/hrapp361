class DcLevelsController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_dc_level, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :dc_level

  # GET /dc_levels
  def index
    @q = @dc_levels.search params[:q]
    @dc_levels = @q.result.page(params[:page])
  end

  # GET /dc_levels/1
  def show
  end

  # GET /dc_levels/new
  def new
  end

  # GET /dc_levels/1/edit
  def edit
  end

  # POST /dc_levels
  def create
    respond_to do |format|
      if @dc_level.save
        format.html { redirect_to @dc_level, notice: t('success_create') }
        format.json { render :show, status: :created, location: @dc_level }
      else
        format.html { render :new }
        format.json { render json: @dc_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dc_levels/1
  def update
    respond_to do |format|
      if @dc_level.update(dc_level_params)
        format.html { redirect_to @dc_level, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @dc_level }
      else
        format.html { render :edit }
        format.json { render json: @dc_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dc_levels/1
  def destroy
    @dc_level.destroy
    respond_to do |format|
      format.html { redirect_to dc_levels_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def dc_level_params
    params.require(:dc_level).permit(:name, :active_status, :sort_order, :comment)
  end
end
