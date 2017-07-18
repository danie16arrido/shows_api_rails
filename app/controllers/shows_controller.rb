class ShowsController < ApplicationController

  def index
    shows = Show.all()
    render :json => shows
  end

  def create
    new_show = Show.create( show_params )
    render :json => new_show
  end

end

private

def show_params
  params.require(:show).permit([:title, :series, :description, :image])
end
