class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  def create
    @post = Post.new(params_post)
    @post.save
    redirect_to posts_path
  end

  private
  def params_post
    params.require(:post).permit(:title,:content)
  end
end
