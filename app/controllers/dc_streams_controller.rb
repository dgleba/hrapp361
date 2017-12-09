class DcStreamsController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_dc_stream, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :dc_stream

  # GET /dc_streams
  def index
    @q = @dc_streams.search params[:q]
    @dc_streams = @q.result.page(params[:page])
  end

  # GET /dc_streams/1
  def show
  end

  # GET /dc_streams/new
  def new
  end

  # GET /dc_streams/1/edit
  def edit
  end

  # POST /dc_streams
  def create
    respond_to do |format|
      if @dc_stream.save
        format.html { redirect_to @dc_stream, notice: t('success_create') }
        format.json { render :show, status: :created, location: @dc_stream }
      else
        format.html { render :new }
        format.json { render json: @dc_stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dc_streams/1
  def update
    respond_to do |format|
      if @dc_stream.update(dc_stream_params)
        format.html { redirect_to @dc_stream, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @dc_stream }
      else
        format.html { render :edit }
        format.json { render json: @dc_stream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dc_streams/1
  def destroy
    @dc_stream.destroy
    respond_to do |format|
      format.html { redirect_to dc_streams_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def dc_stream_params
    params.require(:dc_stream).permit(:name, :active_status, :sort_order, :comment)
  end
end
