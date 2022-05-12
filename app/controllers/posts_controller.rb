class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments, :likes).order(created_at: :desc)
  end

  def show
    @post = Post.includes(:comments, :likes).find(params[:id])
    @user = @post.author
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
    respond_to do |e|
      e.html do
        if @post.save
          redirect_to "/users/#{@post.author.id}/posts/", notice: 'Post was successfully created.'
        else
          render :new
        end
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
