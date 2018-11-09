class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(params[:id])
  end

  private

  def cocktail_params
    params.require(:dose).permit(:description)
  end
end
