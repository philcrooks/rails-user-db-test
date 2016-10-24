class MountainsController < ApplicationController
  # This is where the routes go

  def index
    mountains = Mountain.select("id", "mtn_id", "climbed_on").where("user_id = ?", params[:user_id]).order("mtn_id")
    render({json: mountains.as_json()})
  end

  def create
    mountain = Mountain.create( mountain_params().merge({user_id: params[:user_id]}) )
    render({json: mountain})
  end

  private

  def mountain_params
    params.require(:mountain).permit([:mtn_id, :climbed_on])
  end

end