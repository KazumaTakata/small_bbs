class Post < ApplicationRecord
  validates :content, presence: true, length: { maximum: 300 }
  belongs_to :post_thread
end
