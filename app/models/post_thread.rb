class PostThread < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  has_many :posts

end
