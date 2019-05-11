class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
  end

  def create
    params[:parent_commnet_id] = 0 if params[:parent_commnet_id].nil?
    params[:comment][:article_id] = params[:comment][:article_id].to_i
    article = Article.find(params[:comment][:article_id])
    comment = article.comments.build(comment_params)
    comment.save
    redirect_to diaries_path
    # redirect_to comments_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :article_id)
  end
end
