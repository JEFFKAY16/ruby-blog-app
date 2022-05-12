class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    post = Post.find(params[:post_id])
    comment = current_user.comments.new(comments_params)
    comment.post = post

    if comment.save
      redirect_to user_post_path(current_user.id, post)
      flash[:success] = 'Comment was successfully added.'
    else
      render :new
    end
  end

  def destroy; end

  def comments_params
    params.require(:comment).permit(:text)
  end
end
