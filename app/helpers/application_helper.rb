module ApplicationHelper
  def get_categories
    @categories = Category.all
  end
end
