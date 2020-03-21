class AddCatEconomyToPostThread < ActiveRecord::Migration[5.2]
  def change
    add_column :post_threads, :cat_economy, :boolean
  end
end
