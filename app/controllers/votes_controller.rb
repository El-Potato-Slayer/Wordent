class VotesController < ApplicationController
  def new
    @vote = current_user.votes.build
  end

  def create
    @vote = current_user.votes.build(article_id: params[:article_id])

    if @vote.save
      # redirect_back(fallback_location: root_path)
    else
      # redirect_to posts_path, alert: 'You cannot like this post.'
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if vote
      vote.destroy
      # redirect_back(fallback_location: root_path)
    else
      redirect_to posts_path, alert: 'You cannot dislike post that you did not like before.'
    end
  end

  private

  def set_vote
    @vote = Vote.find(params[:id])
  end

  def vote_params
    params.require(:vote).permit(:article_id)
  end
end
