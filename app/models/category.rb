class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories

  # scope :most_recent_article, -> (article) { order(created_at: :desc), article }
end
