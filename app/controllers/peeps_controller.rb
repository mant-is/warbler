class PeepsController < ApplicationController
  before_action :set_peep, only: %i[ show edit update destroy ]
  before_action :authentice_user!, except: [:index, :show]

  def index
    @peeps = Peep.all.order("created_at DESC")
    @peep = Peep.new
  end

  def show
  end

  def new
    @peep = current_user.peep.build
  end

  def edit
  end

  def create
    @peep = Peep.new(peep_params)
    
    respond_to do |format|
      if @peep.save
        format.html { redirect_to :root, notice: "Peep was successfully created." }
        format.json { render :show, status: :created, location: @peep }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @peep.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @peep.update(peep_params)
        format.html { redirect_to @peep, notice: "Peep was successfully updated." }
        format.json { render :show, status: :ok, location: @peep }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @peep.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @peep.destroy
    respond_to do |format|
      format.html { redirect_to peeps_url, notice: "Peep was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peep
      @peep = Peep.find(params[:id])
    end

    def peep_params
      params.require(:peep).permit(:chirp)
    end
end
