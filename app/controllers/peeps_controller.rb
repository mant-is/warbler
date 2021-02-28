class PeepsController < ApplicationController
  before_action :set_peep, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @peeps = Peep.all.order("created_at DESC")
    @peep = Peep.new
    # respond_with(@peeps)
  end

  def show
  end

  def new
    @peep = current_user.peeps.build
  end

  def edit
  end

  def create
    @peep = current_user.peeps.build(peep_params)
    if @peep.save
      redirect_to :root, notice: "Peep was successfully created." 
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @peep.update(peep_params)
      redirect_to @peep, notice: "Peep was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @peep.destroy
    redirect_to peeps_url, notice: "Peep was successfully destroyed."
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
