class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  
  has_one_attached :image
  has_rich_text :body
  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories
  has_many :votes, dependent: :destroy

  accepts_nested_attributes_for :categories, allow_destroy: true

  scope :sort_by_votes, -> { sort_by{ |article| article.votes.count}.reverse }
  scope :sort_by_new, -> { order("created_at DESC") }
  scope :newest_first, -> { order("created_at DESC").first }

  validates :author_id, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: { message: "Select a cover image" }
  validates :body, presence: true
  validates :category_ids, presence: { message: "Select at least 1 category" }
end
