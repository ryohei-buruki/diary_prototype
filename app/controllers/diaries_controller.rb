class DiariesController < ApplicationController
  def index
    # binding.pry
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
    @diary.articles.build
  end

  def create
    puts '_______________'
    puts params
    puts Article.count
    puts Diary.count
    puts '_______________'
    binding.pry
    Diary.create(diary_params)
    redirect_to diaries_path
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

  def diary_params
    params.require(:diary).permit(:date, articles_attributes: [:item_id, :date, :article])
  end
end
