class PpParkingpassesController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_pp_parkingpass, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :pp_parkingpass

  # GET /pp_parkingpasses
  def index
    @q = @pp_parkingpasses.search params[:q]
    @pp_parkingpasses = @q.result.page(params[:page])
  end

  # GET /pp_parkingpasses/1
  def show
  end

  # GET /pp_parkingpasses/new
  def new
  end

  # GET /pp_parkingpasses/1/edit
  def edit
  end

  # POST /pp_parkingpasses
  def create
    respond_to do |format|
      if @pp_parkingpass.save
        format.html { redirect_to @pp_parkingpass, notice: t('success_create') }
        format.json { render :show, status: :created, location: @pp_parkingpass }
      else
        format.html { render :new }
        format.json { render json: @pp_parkingpass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pp_parkingpasses/1
  def update
    respond_to do |format|
      if @pp_parkingpass.update(pp_parkingpass_params)
        format.html { redirect_to @pp_parkingpass, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @pp_parkingpass }
      else
        format.html { render :edit }
        format.json { render json: @pp_parkingpass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pp_parkingpasses/1
  def destroy
    @pp_parkingpass.destroy
    respond_to do |format|
      format.html { redirect_to pp_parkingpasses_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def pp_parkingpass_params
    params.require(:pp_parkingpass).permit(:en_name, :parking_pass, :dept, :company, :grouping, :estatus, :supervisor, :en_clock)
  end
end
