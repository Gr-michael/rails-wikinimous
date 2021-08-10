class ArticlesController < ApplicationController
  before_action :set_articles, only: [:show, :update, :destroy, :edit]
  def index
    @articles = Article.all
  end

  def show
  end

  def edit
  end

  def update
    @article.update(articles_params)
    redirect_to article_path(@article)
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create(articles_params)
    redirect_to article_path(article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_articles
    @article = Article.find(params[:id])
  end

  def articles_params
    params.require(:article).permit(:title, :content)
  end
end
