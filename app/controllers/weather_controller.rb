class WeatherController < ApplicationController

  def create
    require 'alexa_rubykit'
    response = AlexaRUbykit::Response.new
    response.add_speech("こんにちは")
    response.build_response
  end
end
