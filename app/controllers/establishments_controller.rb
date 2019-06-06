class EstablishmentsController < ApplicationController

  def index
    @establishments = Establishment.all
  end

  def show
    @establishment = Establishment.find_by(id: params[:id])
    @good = Good.new
    @occupant = current_occupant
  end

end
