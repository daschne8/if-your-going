class Admin::DisplaysController < ApplicationController
  
  def index
    @establishments = Establishment.all
    @occupants = Occupant.all
    @goods = Good.all
    @tags = Tag.all
  end
end
