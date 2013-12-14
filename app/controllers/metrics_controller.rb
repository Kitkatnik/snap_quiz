class MetricsController < ApplicationController
  def index
    @quizzes = Quiz.group("result").count
  end
end
