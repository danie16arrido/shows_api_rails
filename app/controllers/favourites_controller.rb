class FavouritesController < ApplicationController
  def index
    favourites = Favourite.all 
    render :json => favourites
  end

  def show
    favourite = Favourite.find( params[:id])
    render :json => favourite
  end
end