class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @like = Like.new
    @post = Post.find(params[:id])
    @like.post_id = @post.id
    @like.user_id = current_user.id

    if @like.save
      redirect_to user_post_path(current_user, @post)
    else
      render :new
    end
  end
end
