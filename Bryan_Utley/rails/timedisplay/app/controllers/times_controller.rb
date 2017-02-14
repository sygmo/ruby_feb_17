class TimesController < ApplicationController
  require 'date'

 def main
   current_time = DateTime.now
   current_time.strftime "%d/%m/%Y %H:%M"

   @date = current_time.strftime("%B %d, %Y")
   @time = current_time.strftime("%l:%M %p")

   render 'index'
 end

end
