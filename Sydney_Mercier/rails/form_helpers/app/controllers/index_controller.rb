class IndexController < ApplicationController
  def main
  	@dog = Dog.new
  	@dog.save()
  end
end
