class TalkerController < ApplicationController
  def index
    @chats = Talk.all
  end
  
  def create
    user_talk = params[:ask]
    simsim_talk = Learn.where(ask: user_talk)
    
    if simsim_talk.take != nil
      new_chat = Talk.new
      new_chat.ask = user_talk
      new_chat.answer = simsim_talk.sample.answer
      new_chat.save
      redirect_to "/"
    else  
      # 한글 검색을 위해 필요
      url = "/learn?newword=" + user_talk
      uri = URI.encode(url.strip)
      redirect_to uri
    end
  end
end
