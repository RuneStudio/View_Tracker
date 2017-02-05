class OpenHomeTimesController < ApplicationController
  before_action :set_open_home_time, only: [:show, :edit, :update, :destroy]

  # GET /open_home_times
  # GET /open_home_times.json
  def index
    @open_home_times = OpenHomeTime.all
  end

  # GET /open_home_times/1
  # GET /open_home_times/1.json
  def show
  end

  # GET /open_home_times/new
  def new
    @open_home_time = OpenHomeTime.new
  end

  # GET /open_home_times/1/edit
  def edit
  end

  # POST /open_home_times
  # POST /open_home_times.json
  def create
    @open_home_time = OpenHomeTime.new(open_home_time_params)

    unless params[:property_id].nil?
      @open_home_time.property_id = params[:property_id]
    end

    @open_home_time.user_id = current_user.id

    respond_to do |format|
      if @open_home_time.save
        format.html { redirect_to property_path(params[:property_id]), notice: 'Open home time was successfully created.' }
        format.json { render :show, status: :created, location: @open_home_time }
      else
        format.html { render :new }
        format.json { render json: @open_home_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /open_home_times/1
  # PATCH/PUT /open_home_times/1.json
  def update
    respond_to do |format|
      if @open_home_time.update(open_home_time_params)
        format.html { redirect_to property_open_home_time(@open_home_time.property, @open_home_time), notice: 'Open home time was successfully updated.' }
        format.json { render :show, status: :ok, location: @open_home_time }
      else
        format.html { render :edit }
        format.json { render json: @open_home_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_home_times/1
  # DELETE /open_home_times/1.json
  def destroy
    @open_home_time.destroy
    respond_to do |format|
      format.html { redirect_to open_home_times_url, notice: 'Open home time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_home_time
      @open_home_time = OpenHomeTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_home_time_params
      params.require(:open_home_time).permit(:time)
    end
end
