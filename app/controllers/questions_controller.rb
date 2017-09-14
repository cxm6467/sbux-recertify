class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
    redirect_to quizzes_path
  end
  private 

  def question_params
    params.require(:question).permit(:question_name, :description)
  end
end