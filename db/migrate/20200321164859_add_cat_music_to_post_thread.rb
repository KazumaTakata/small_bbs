class AddCatMusicToPostThread < ActiveRecord::Migration[5.2]
  def change
    add_column :post_threads, :cat_music, :boolean
  end
end
