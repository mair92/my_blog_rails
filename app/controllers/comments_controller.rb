class CommentsController < ApplicationController

  before_action :authenticate_user!, :only => [:new, :create]


  def create 
    @article = Article.find(params[:article_id])
    @article.comments.create(comment_params)
    @comment = @article.comments.last
    @comment.user_id = current_user.id
    @comment.save

    redirect_to article_path(@article)
  end 
 
  private 
  def comment_params
    params.require(:comment).permit(:author, :body)  
  end
end
