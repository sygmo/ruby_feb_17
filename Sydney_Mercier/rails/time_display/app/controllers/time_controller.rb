require 'date'

class TimeController < ApplicationController
  def main
  	@date = DateTime.now
  end
end
