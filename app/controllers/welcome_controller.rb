class WelcomeController < ApplicationController
  def index
    @posts = Post.all.limit(4).order(created_at: :desc)
    @categories = Category.all
  end

  def sitemap
    respond_to do |format|
      format.xml { render file: 'public/sitemaps/sitemap.xml' }
      format.html { redirect_to root_url }
    end
  end

  def robots
    @posts = Post.where(published: false)
  end
end
