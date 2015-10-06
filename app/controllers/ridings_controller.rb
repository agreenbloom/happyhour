class RidingsController < ApplicationController
  def index
    @ridings = Riding.all
  end

  def show
    @riding = Riding.find(params[:id])
    @previous = previous_riding
    @next = next_riding
  end

  def previous_riding
    @ridings = Riding.order("name")
    @previous = @ridings[@ridings.find_index(
      Riding.find(params[:id])) - 1
    ]
  end

  def next_riding
    @ridings = Riding.order("name")
    unless @ridings[@ridings.find_index(Riding.find(params[:id])) + 1].nil?
      @next = @ridings[@ridings.find_index(
        Riding.find(params[:id])) + 1
      ]
    else
      @next = @ridings.first
    end
  end

end
