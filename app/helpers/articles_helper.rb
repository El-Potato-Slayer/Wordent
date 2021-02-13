module ArticlesHelper
  # def sort_articles
  #   @sorted_articles = @articles.sort_by { |article| article.votes.count }.reverse
  #   # @articles.each do |article|
      
  #   # end
  # end
  @title_error = nil
  @description_error = nil
  @image_error = nil
  @body_error = nil
  @category_error = nil

  def assign_errors
    if flash[:errors]
      flash[:errors].each do |e|
        @title_error = e if e.include? "Title can't be blank"
        @description_error = e if e.include? "Description can't be blank"
        @image_error = e if e.include? 'Select a cover image'
        @body_error = e if e.include? "Body can't be blank"
        @category_error = e if e.include? 'Select at least 1 category'
      end
    end
  end

  def first_article
    @articles.sort_by_votes.first
  end

  def edit_delete_buttons(article)
    if current_user == article.author
      link_to('Edit', edit_article_path(article), class: "border-2 border-gray-600 rounded px-4 py-1 hover:text-white hover:bg-gray-600 transition-all shadow-md mx-4") + link_to('Delete', article, class: "border-2 border-red-500 hover:text-white hover:bg-red-500 shadow-md px-4 py-1 rounded transition-all", method: :delete, data: { confirm: 'Are you sure?' } )
    end
  end

  def display_article_image(article)
    if article.image.attached?
        image_tag(article.image, class: "w-full mt-8" ) 
    end
  end
end
