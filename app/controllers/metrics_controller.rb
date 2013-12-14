class MetricsController < ApplicationController
  def index
    @quizzes = Quiz.group("result").count
    @count = Quiz.count
  end

  def question
  	@question = Question.find(params[:id])
  	@answers = @question.quizzes.group('response').count
  end
end
