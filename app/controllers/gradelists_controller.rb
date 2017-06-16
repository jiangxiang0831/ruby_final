class GradelistsController < ApplicationController
  before_action :set_gradelist, only: [:show, :edit, :update, :destroy]

  # GET /gradelists
  # GET /gradelists.json
  def index
    @gradelists = Gradelist.all
  end

  # GET /gradelists/1
  # GET /gradelists/1.json
  def show
  end

  # GET /gradelists/new
  def new
    @gradelist = Gradelist.new
  end

  # GET /gradelists/1/edit
  def edit
  end

  # POST /gradelists
  # POST /gradelists.json
  def create
    @gradelist = Gradelist.new(gradelist_params)

    respond_to do |format|
      if @gradelist.save
        format.html { redirect_to @gradelist, notice: 'Gradelist was successfully created.' }
        format.json { render :show, status: :created, location: @gradelist }
      else
        format.html { render :new }
        format.json { render json: @gradelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gradelists/1
  # PATCH/PUT /gradelists/1.json
  def update
    respond_to do |format|
      if @gradelist.update(gradelist_params)
        format.html { redirect_to @gradelist, notice: 'Gradelist was successfully updated.' }
        format.json { render :show, status: :ok, location: @gradelist }
      else
        format.html { render :edit }
        format.json { render json: @gradelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gradelists/1
  # DELETE /gradelists/1.json
  def destroy
    @gradelist.destroy
    respond_to do |format|
      format.html { redirect_to gradelists_url, notice: 'Gradelist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gradelist
      @gradelist = Gradelist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gradelist_params
      params.require(:gradelist).permit(:name, :id, :scr)
    end
end
