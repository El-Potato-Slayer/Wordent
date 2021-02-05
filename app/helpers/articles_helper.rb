module ArticlesHelper
  # def sort_articles
  #   @sorted_articles = @articles.sort_by { |article| article.votes.count }.reverse
  #   # @articles.each do |article|
      
  #   # end
  # end

  def first_article
    @articles.sort_by_votes.first
  end

  def edit_delete_buttons(article)
    if current_user == article.author
      link_to('Edit', edit_article_path(article), class: "border-2 border-gray-600 rounded px-4 py-1 hover:text-white hover:bg-gray-600 transition-all shadow-md mx-4") + link_to('Delete', article, class: "border-2 border-red-500 hover:text-white hover:bg-red-500 shadow-md px-4 py-1 rounded transition-all", method: :delete, data: { confirm: 'Are you sure?' } )
    end
  end

  def display_article_image(article)
    render partial: 'article_image', locals: { article: article } if article.image.attached?
  end
end
