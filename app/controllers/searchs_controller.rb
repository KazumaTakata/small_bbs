class SearchsController < ApplicationController
  def new
  end

  def show
    if params[:search_word].length > 0
    @posts = {}
    PostThread.all.each { |postthread| 
      @posts[postthread.name] =   postthread.posts.where( "content LIKE ?", "%#{params[:search_word]}%").to_a
    }
    else 
      flash.now[:alert] = "Search word should not be blank."
      render "new"
    end

     
  end
end
