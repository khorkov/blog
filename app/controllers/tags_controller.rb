class TagsController < ApplicationController

  def show
    @tag = Tag.find_by(name: params[:id])
    @posts = @tag.posts
    @categories = Category.all
  end
end
