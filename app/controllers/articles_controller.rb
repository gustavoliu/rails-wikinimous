class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new # falta passar os params do form
    article.save
    redirect_to article_path(article)
  end

  def edit
  end

  def update
    @article.update(user_params)
    redirect_to article_path(@article)
  end

  def destroy
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end

  def user_params
    params.require(:article).permit(:title, :content)
  end
end
