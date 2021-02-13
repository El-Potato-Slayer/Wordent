module ApplicationHelper
  def get_categories
    Category.all
  end

  def like_or_dislike_btn(article)
    vote = Vote.find_by(article: article, user: current_user)
    if vote
      link_to('favorite', article_vote_path(id: vote.id, article_id: article.id), method: :delete, remote: true, class: "material-icons justify-self-end like")
    else
      link_to 'favorite_border', article_votes_path( article_id: article.id), method: :post, remote: true, class: "material-icons justify-self-end like"
    end
  end

  def display_errors
    if flash[:errors]
      flash[:errors].each do |e|
        content_tag("div", e)
      end
    end
  end
end
