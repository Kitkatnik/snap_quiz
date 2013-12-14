class QuizController < ApplicationController
  def new
    student = Student.find params[:student]

    quiz = Quiz.new
    quiz.student = student
    quiz.question = Question.first
    quiz.save

    redirect_to students_path
  end
end
