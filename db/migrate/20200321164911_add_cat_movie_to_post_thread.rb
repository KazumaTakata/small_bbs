class AddCatMovieToPostThread < ActiveRecord::Migration[5.2]
  def change
    add_column :post_threads, :cat_movie, :boolean
  end
end
