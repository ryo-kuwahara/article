class PostsController < ApplicationController
     def new
    @post = Post.new
    end
  
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  
   def create
    @post = Post.new(post_params)
    if @post.save
    #   logger.debug("=========================== URL = #{@post.last.image.url}")
      logger.debug("=========================== image = #{@post.image}")
      
      flash[:notice] = "post created!"
      redirect_to posts_path
    else
      render root_url
    end
    end
  
   private
    def post_params
        params.require(:post).permit(:title, :image,:content)
    end
end
