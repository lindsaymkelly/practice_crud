class PostsController < ApplicationController

  def index
    @posts = Post.all 
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    #refactor when login/out logic added
    @post.author_id = rand(1..10)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end

end
