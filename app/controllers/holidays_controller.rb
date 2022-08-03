class HolidaysController < ApplicationController
  require "http"

  def index
    response = HTTP.get("https://calendarific.com/api/v2/holidays?api_key=api-key")
    render json: response.parse(:json)
  end
end
