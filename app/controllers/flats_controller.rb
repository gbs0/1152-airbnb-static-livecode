require 'open-uri'

class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    uri = URI.open(url)
    @flats = JSON.parse(uri.read)
  end

  def show
    flat_id = params[:id] # => 145
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    uri = URI.open(url)
    @flats = JSON.parse(uri.read)
    @flats = @flats.select { |flat| flat["id"] == flat_id.to_i }
  end
end
