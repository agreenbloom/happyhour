class RidingsController < ApplicationController
  def index
    @ridings = Riding.all
  end

  def show
    @riding = Riding.find(params[:id])
  end


end


