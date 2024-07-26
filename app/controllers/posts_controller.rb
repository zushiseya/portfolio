class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    @post.user.id = current_user.id
    @post.save
    redirect_to post_path
  end

  def show
  end

  def edit
  end
  
  private
  
  def post_params
    params.require(:post).permit(:title, :text, :problem, :explanation)
  end
  
end
