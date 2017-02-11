class DojoController < ApplicationController
  def index
  end

  def result
  end

  def process_data
    if session.has_key? "count"
      session["count"] += 1
    else
      session["count"] = 1
    end
    session["name"] = params[:data][:name]
    session["location"] = params[:data][:location]
    session["language"] = params[:data][:language]
    session["comment"] = params[:data][:comment]
    flash[:notice] = "Thank you for submitting! You have submitted the survey #{session['count']} time(s)."
    redirect_to '/dojo/result'
  end
end
