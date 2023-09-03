#Build a class WeatherForecast that generates a random weather forecast for the day.
require 'colorize'

class WeatherForecast
  def initialize
    @weather_conditions = ["sunny", "cloudy", "rainy", "stormy"]
  end

  def generate_forecast
    random_condition = @weather_conditions.sample
    temperature = rand(28..40)

    "Today's Kudat city weather forecast: #{random_condition}, #{temperature}°C".light_yellow
  end
end

forecast = WeatherForecast.new
puts forecast.generate_forecast