class PaintingsController < ApplicationController
  def index
    @paintings = params[:q] ? Painting.search_for(params[:q]) : Painting.all
  end

  def show
  end

  def create
  end
end
