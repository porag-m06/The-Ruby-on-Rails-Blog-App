class PostsController < ApplicationController
  # GET  /users/:user_id/posts
  # Fetching the all posts of the user with id = :user_id
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  # GET  /users/:user_id/posts/:id
  # Fetching the details post with post id = :id
  def show
    @post = Post.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def new
    @new_post_model = Post.new
  end

  # def create
  #   @post = Post.create(author: current_user, title: 'current_user_post', text: 'This is a post created by the current user', comments_counter: 0, likes_counter: 0)
  # end


end
