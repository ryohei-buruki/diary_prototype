class ArticlesController < ApplicationController
  def index
    @articles = Article.all

  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to articles_path
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit(:date, :article, :item_id)
  end
end
