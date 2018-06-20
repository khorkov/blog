class WelcomeController < ApplicationController
  def index
    @posts = Post.all.limit(4).order('created_at desc')
    @categories = Category.all
  end
end
