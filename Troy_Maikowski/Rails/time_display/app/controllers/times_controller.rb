class TimesController < ApplicationController
  def main
    @time_date = Time.now.strftime("%b %d, %Y")
    @time_clock = Time.now.strftime("%I:%M %p")
  end
end
