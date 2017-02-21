class ResponsesController < ApplicationController
  def create
    @user = current_user
    @question = Question.find(params[:question_id])
    @response = Response.new()
    @response[:user_id] = @user.id
    @response[:question_id] = @question.id
    @response[:option1] = params[:option1]
    if @response.save
      respond_to do |format|
        format.html {redirect_to root_path}
        format.js
      end
    end
  end
# private
#  def response_params
#    params.require(:response).permit(:option1)
#  end
end
