class PaintingsController < ApplicationController
  def index
    @paintings = params[:q] ? Painting.search_for(params[:q]) : Painting.all
    @artists = params[:q] ? Artist.search_for(params[:q]) : Artist.all
    @museums = params[:q] ? Museum.search_for(params[:q]) : Museum.all
  end

  def show
    @painting = Painting.find params[:id]
  end

  def new

    @painting = Painting.new
  end

  def create
    @artist = Artist.find_or_create_by_name()
    @Museum = Museum.find_or_create_by_name()
    @painting = Painting.new safe_params
  end
  # def create
  #   @movie = Movie.new safe_params
  #   if @movie.save
  #     flash[:notice] =  "Movie saved successfully"
  #     redirect_to @movie
  #   else
  #     render 'new'
  #   end
  # end

  private

  def safe_params
    params.require(:painting).permit(:title, :url)
  end





end
