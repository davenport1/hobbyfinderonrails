class HobbylistsController < ApplicationController
  before_action :set_hobbylist, only: %i[ show edit update destroy ]

  # GET /hobbylists or /hobbylists.json
  def index
    @hobbylists = Hobbylist.all
  end

  # GET /hobbylists/1 or /hobbylists/1.json
  def show
  end

  # GET /hobbylists/new
  def new
    @hobbylist = Hobbylist.new
  end

  # GET /hobbylists/1/edit
  def edit
  end

  # POST /hobbylists or /hobbylists.json
  def create
    @hobbylist = Hobbylist.new(hobbylist_params)

    respond_to do |format|
      if @hobbylist.save
        format.html { redirect_to @hobbylist, notice: "Hobbylist was successfully created." }
        format.json { render :show, status: :created, location: @hobbylist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hobbylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hobbylists/1 or /hobbylists/1.json
  def update
    respond_to do |format|
      if @hobbylist.update(hobbylist_params)
        format.html { redirect_to @hobbylist, notice: "Hobbylist was successfully updated." }
        format.json { render :show, status: :ok, location: @hobbylist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hobbylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hobbylists/1 or /hobbylists/1.json
  def destroy
    @hobbylist.destroy
    respond_to do |format|
      format.html { redirect_to hobbylists_url, notice: "Hobbylist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hobbylist
      @hobbylist = Hobbylist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hobbylist_params
      params.require(:hobbylist).permit(:hobbyname, :description, :averagecost, :resources)
    end
end
