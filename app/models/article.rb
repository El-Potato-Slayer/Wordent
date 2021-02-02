class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  
  has_one_attached :image
  has_many :article_categories
  has_many :categories, through: :article_categories
  has_many :votes

  scope :sort_by_votes, -> { includes(:votes).sort_by{ |article| article.votes.count}.reverse }
end
