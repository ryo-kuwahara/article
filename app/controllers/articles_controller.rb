class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  
  def index
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end
  
   def create
    @article = Article.new(article_params)
    if @article.save
      # logger.debug("=========================== URL = #{Article.last.image.url}")
      logger.debug("=========================== image = #{@article.image}")
      
      flash[:notice] = "Article created!"
      redirect_to articles_path
    else
      render root_url
    end
  end
  
   private
    def article_params
        params.require(:article).permit(:title, :image)
    end
  
  
end
