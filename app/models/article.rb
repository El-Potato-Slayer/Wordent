class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  
  has_one_attached :image
  has_many :article_categories
  has_many :categories, through: :article_categories
  has_many :votes
end
