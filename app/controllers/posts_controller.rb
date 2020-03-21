class PostsController < ApplicationController
  def create
    if logged_in?
      @post = PostThread.find(params[:id]).posts.create({ content: params[:content], user_id: session[:user_id]})
    else 
      @post = PostThread.find(params[:id]).posts.create({ content: params[:content]})

    end
    if @post.persisted?
      redirect_back(fallback_location: root_path)
    else 
      redirect_back(fallback_location: root_path, alert: @post.errors.full_messages)
    end
  end  


  def show 
  end



end
