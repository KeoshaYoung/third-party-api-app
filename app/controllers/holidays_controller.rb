class HolidaysController < ApplicationController
  require "http"

  def index
    response = HTTP.get("https://calendarific.com/api/v2/holidays?api_key=API_KEY")
    render json: response.parse(:json)
  end
end
