class CampsitesController < ApplicationController
  def index
    @search = Campsite.search(params[:q])
    @campsites = @search.result.page(params[:page]).per(3)
  end

  def new 
    @campsite = Campsite.new
  end

  def create 
    Campsite.create(strong_params)
    redirect_to campsites_path
  end

  private

  def strong_params
    (params.require(:campsite).permit(:name, :address, :city_id))
  end
end