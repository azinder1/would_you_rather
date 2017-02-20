class CommentsController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @comment = Comment.new
  end

  def create
    @question = Question.find(params[:question_id])
    @questions = Question.all
    @comment = @question.comments.new(comment_params)
    @comment[:user_id] = current_user.id
    if @comment.save
      respond_to do |format|
        format.html {redirect_to questions_path}
        format.js
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
