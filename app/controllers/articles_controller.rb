class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end
  def new
=begin
    metodo vacio.
=end
  end
  def edit
    @article = Article.find(params[:id])
  end
  def create
    @article = Article.new(article_params)
    # Salvar el artículo
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
    
  end
private
  def article_params
    params.require(:article).permit(:title,:text)
  end
end
