module ApplicationHelper
  def get_categories
    Category.all
  end

  def prioritized_categories
    Category.all.order("priority ASC")
  end

  def like_or_dislike_btn(article)
    vote = Vote.find_by(article: article, user: current_user)
    if vote
      link_to('Dislike', article_vote_path(id: vote.id, article_id: article.id), method: :delete, remote: true, class: "justify-self-end")
    else
      link_to 'Like', article_votes_path( article_id: article.id), method: :post, remote: true, class: "justify-self-end"
    end
  end
end
