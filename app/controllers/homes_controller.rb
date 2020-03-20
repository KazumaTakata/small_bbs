class HomesController < ApplicationController
  def main
    @threads = PostThread.all
  end


  def new
    @thread = PostThread.new 
  end

  def create 
    @thead = PostThread.new(name:params[:thread_name])
    @thead.save
    redirect_to root_path
  end
end
