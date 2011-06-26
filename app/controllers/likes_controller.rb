class LikesController < ApplicationController
  
  # respond_to :js
  
  def create
    @like = Like.create(params[:like])
    @product = @like.product
    render :toggle
  end

  def destroy
    like = Like.find(params[:id]).destroy
    @product = like.product
    render :toggle
  end

end
