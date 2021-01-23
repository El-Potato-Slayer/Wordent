module CategoriesHelper
  @recent_articles = nil
  
  def most_recent_articles(category = @category)
    @recent_articles = category.articles.order("created_at DESC")
  end
  
  def first_article(category)
    @first_art = most_recent_articles(category).first
  end
end
