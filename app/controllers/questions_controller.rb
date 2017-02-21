class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @comment = Comment.new
    @response = Response.new
  end


  def new
    @user = current_user
    @question = Question.new
  end

  def create
    @user = current_user
    @question = Question.new(question_params)
    @question[:user_id] = @user.id
   if @question.save
     flash[:notice] = "Question added"
     redirect_to questions_path
   else
     flash[:alert] = "Please try again"
     redirect_to :back
   end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    if @question.save
      redirect_to question_path(@question)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(current_user.id)
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

  private
    def question_params
      params.require(:question).permit(:option1, :option2, :option1_photo, :option2_photo)
    end
end
