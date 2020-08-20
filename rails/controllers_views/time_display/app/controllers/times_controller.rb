class TimesController < ApplicationController
  def main
    @date = DateTime.now.in_time_zone.strftime('%b %d, %Y')
    @time = DateTime.now.in_time_zone.strftime('%I:%M:%S %p')
  end
end
