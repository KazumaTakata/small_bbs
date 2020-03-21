class SearchsController < ApplicationController
  def new
  end

  def show
    @posts = {}
    PostThread.all.each { |postthread| 
      @posts[postthread.name] =   postthread.posts.where( "content LIKE ?", "%#{params[:search_word]}%").to_a
    }
     
  end
end
