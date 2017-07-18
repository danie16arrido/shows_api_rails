class UsersController < ApplicationController
  def index
    users = User.all 
    render :json => users
  end

  def show
    user = User.find( params[:id])
    render :json => user.as_json(
      { only: [:name, :last_name],
        include: {
          shows: { 
            only: [:title, :series, :description, :image]
          }
        }
      }
    )
  end

end