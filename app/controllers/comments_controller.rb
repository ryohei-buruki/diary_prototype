class CommentsController < ApplicationController
  def index
    puts 'a'
    @comments = Comment.all
  end

  def new
  end

  def create
    params[:parent_commnet_id] = 0 if params[:parent_commnet_id].nil?
    params[:comment][:article_id] = params[:comment][:article_id].to_i
    article = Article.find(params[:comment][:article_id])
    comment = article.comments.build(comment_params)
    if comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_to root_path
    end
    # respond_to do |format|
    #   if comment.save
    #     format.js{ render :index }
    #   else
    #     format.html{redirect_to diary_path(article.diary_id)}
    #   end
    # end
  end

  def show
    binding.pry
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show_in_diary
    puts '呼ばれてる'
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :article_id)
  end
end
