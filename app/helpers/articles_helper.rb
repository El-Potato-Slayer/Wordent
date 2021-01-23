module ArticlesHelper
  def sort_articles
    @sorted_articles = @articles.sort_by { |article| article.votes.count }.reverse
    # @articles.each do |article|
      
    # end
  end
end
