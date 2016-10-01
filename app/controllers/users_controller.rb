class UsersController < ApplicationController

  def index
  end

  def search
    lat = params[:latitude]
    lng = params[:longitude]
    radius = params[:radius]
    if !params[:latitude].nil?
      response = HTTParty.get("http://api.divesites.com/?mode=sites&lat=#{lat}&lng=#{lng}&dist=#{radius}")
      hash = response.parsed_response
      @results = hash['sites']
      render :search
    else
      @results = []
    end
  end

end
