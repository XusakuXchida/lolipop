class WeatherController < ApplicationController

  def create
    request = AlexaRubykit::build_request(params)
    response = AlexaRubykit::Response.new
    response.add_speech("今日の天気は晴れ時々ぶたです")
    render json: response.build_response

    # param = Param.new
    # param = params
    # param.save
  end
end
