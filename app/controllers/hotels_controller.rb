class HotelsController < ApplicationController
  def show
	@hotel = Hotel.find(params[:id])
  end
  def index
	@q = Hotel.ransack(params[:q])
	@hotels = @q.result(distinct: true)
  end
end
