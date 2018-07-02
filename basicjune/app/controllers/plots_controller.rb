class PlotsController < ApplicationController
  # before_action :set_plot, only: [:show, :edit, :update, :destroy]

  # GET /plots
  # GET /plots.json
  def index
    if session[:plot_id]
      @xyz = Plot.find(session[:plot_id])
    end

    @plots = Plot.all
   
  end
    def sign_in

    end

    def create_sessiom

     u = Plot.find_by(comment: params[:comment])

     session[:plot_id]=u.id
     redirect_to action: 'index'

    end

  # GET /plots/1
  # GET /plots/1.json
  def show
    @plot = Plot.find(params[:id])
  end

  # GET /plots/new
  def new
    @plot = Plot.new
  end

  # GET /plots/1/edit
  def edit
    @plot = Plot.find(params[:id])
  end

  # POST /plots
  # POST /plots.json
  def create
   
    @plot = Plot.new(content: params[:plot][:content])

    respond_to do |format|
      if @plot.save
        format.html { redirect_to @plot, notice: 'Plot was successfully created.' }
        format.json { render :show, status: :created, location: @plot }
      else
        format.html { render :new }
        format.json { render json: @plot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plots/1
  # PATCH/PUT /plots/1.json
  def update
    @plot = Plot.find(params[:id])
    respond_to do |format|
      if @plot.update(plot_params)
        format.html { redirect_to @plot, notice: 'Plot was successfully updated.' }
        format.json { render :show, status: :ok, location: @plot }
      else
        format.html { render :edit }
        format.json { render json: @plot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plots/1
  # DELETE /plots/1.json
    def destroy
      @plot = Plot.find(params[:id])
    @plot.destroy
    respond_to do |format|
      format.html { redirect_to plots_url, notice: 'Plot was successfully destroyed.' }
      format.json { head :no_content }
    end

   

    # private
    # # Use callbacks to share common setup or constraints between actions.
    # def set_plot
    #   @plot = Plot.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plot_params
      params.require(:plot).permit(:content)
    end
  end
end
