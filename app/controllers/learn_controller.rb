class LearnController < ApplicationController
  def index
    # 한글 검색을 위해 encode 한것을 다시 decode
    @new_word = URI.decode(params[:newword])
  end
  
  def create
    study = Learn.new
    study.ask = params[:ask]
    study.answer = params[:answer]
    study.save
    
    redirect_to "/"
  end
end
