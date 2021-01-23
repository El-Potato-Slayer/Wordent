module ApplicationHelper
  def get_categories
    Category.all
  end

  def prioritized_categories
    Category.all.order("priority ASC")
  end
end
