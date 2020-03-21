class PostsController < ApplicationController
  def create
    if logged_in?
      PostThread.find(params[:id]).posts.create({ content: params[:content], user_id: session[:user_id]})
    else 
      PostThread.find(params[:id]).posts.create({ content: params[:content]})
    end
    redirect_back(fallback_location: root_path)
  end
end
