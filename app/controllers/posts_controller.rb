class PostsController < ApplicationController
	protect_from_forgery #この記述は無視して！
  before_action :authenticate_user!
	def index
		@posts = Post.all
	end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.user_id = current_user.id 
    if post.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
  end

	def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to action: :index
  end

  private
  def post_params
    params.require(:post).permit(:age, :body, :user_id)
  end
end
