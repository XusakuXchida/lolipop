class WeatherController < ApplicationController

  def create
    request = AlexaRubykit::build_request(params)
    response = AlexaRubykit::Response.new
    response.add_speech("今日の天気は晴れ時々#{request.slots[:item][:value]}です")
    render json: response.build_response

    param = Param.new
    param.name = request
    param.save
  end
end
