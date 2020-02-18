class PrefecturesController < ApplicationController
  def show
  	@prefecture = Prefecture.find(params[:id])
    @hotels = @prefecture.hotels
  end
end
