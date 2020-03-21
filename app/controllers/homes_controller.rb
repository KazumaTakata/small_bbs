class HomesController < ApplicationController
  def main
    @categories = ["cat_sport", "cat_economy", "cat_music", "cat_movie", "cat_science"]
    @threads = PostThread.all
  end


  def new
    @thread = PostThread.new 
  end

  def create 
    @thread = PostThread.new(name:params[:thread_name], cat_sport:params[:cat_sport], cat_economy:params[:cat_economy], cat_music:params[:cat_music], cat_movie:params[:cat_movie], cat_science:params[:cat_science]  )
    if @thread.save
      redirect_to root_path
    else 
      render "new"
    end
  end


  def show 
    @categories = ["cat_sport", "cat_economy", "cat_music", "cat_movie", "cat_science"]
    @thread = PostThread.find(params[:id])
    @posts = PostThread.find(params[:id]).posts
    @id = params[:id]
  end

end
