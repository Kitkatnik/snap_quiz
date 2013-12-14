class MetricsController < ApplicationController
  def index
    @quizzes = Quiz.group("result").count
  end

  def question
  	@question = Question.find(params[:id])
  	@answers = @question.quizzes.group('response').count
  end
end
