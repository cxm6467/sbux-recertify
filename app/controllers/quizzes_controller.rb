class QuizzesController < ApplicationController
  before_action :authenticate_user!
  def new
    @quiz = Question.new
  end

  def index
    @questions = Question.all
  
  end
  def create
    Question.create(question_params)
    redirect_to quizzes_path
  end

  private 

  def question_params
    params.require(:questions).permit(:question, :description)
  end
end
