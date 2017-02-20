class QuestionsController < ApplicationController

  def index
    # @questions = Queston.all
  end

#   def show
#     @question = Queston.find(params[:id])
#     @comments = @question.comments
#   end
#
#   def new
#     @question = Queston.new
#   end
#
#   def create
#     @question = Queston.new(question_params)
#    if @question.save
#      flash[:notice] = "Queston added"
#      redirect_to questions_path
#    else
#      flash[:alert] = "Please try again"
#      redirect_to :back
#    end
#   end
#
#   def edit
#     @question = Queston.find(params[:id])
#   end
#
#   def update
#     @question = Queston.find(params[:id])
#     @question.update(question_params)
#     if @question.save
#       redirect_to question_path(@question)
#     else
#       render :edit
#     end
#   end
#
#   def destroy
#     @user = User.find(current_user.id)
#     @question = Queston.find(params[:id])
#     @question.destroy
#     redirect_to questions_path
#   end
#
#   private
#     def question_params
#       params.require(:question).permit(:option1, :option2)
#     end
end
