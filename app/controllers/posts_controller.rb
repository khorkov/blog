class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  add_breadcrumb 'Home', :root_path
  add_breadcrumb 'Articles', :posts_path

  def index
    @posts = Post.all.limit(4).order('created_at desc').paginate(page: params[:page], per_page: 4)
    @categories = Category.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params

    if @post.save
      redirect_to @post, success: 'Your article was successfully saved!'
    else
      flash.now[:danger] = 'I was unable to save your post.'
      render :new
    end
  end

  def show
    add_breadcrumb @post.title
    @posts = Post.all.limit(4).order('created_at desc')
    @categories = Category.all
  end

  def edit; end

  def update
    if @post.update post_params
      redirect_to @post, success: 'Your article was successfully saved!'
    else
      flash.now[:danger] = 'I was unable to update your post.'
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, success: 'Your article was successfully deleted!'
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :slug, :image, :all_tags, :category_id)
  end

  def find_post
    @post = Post.friendly.find(params[:id])
  end
end
