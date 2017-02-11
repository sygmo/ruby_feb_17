class CommentController < ApplicationController
  def index
    @products = Product.all
    @comments = Comment.all
  end

  def create
    product = Product.find(params[:comment][:p_id])
    Comment.create(comment: params[:comment][:comment], product: product)
    redirect_to '/comments/'
  end
end
