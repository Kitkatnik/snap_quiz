class QuizController < ApplicationController
  def new
    student = Student.find params[:student]

    quiz = Quiz.new
    quiz.student = student
    quiz.question = Question.first
    quiz.save

    redirect_to students_path
  end

  def show
    @quiz = Quiz.find params[:id]
  end

  def answer
    quiz = Quiz.find params[:id]
    quiz.response = params[:answer]
    quiz.save

    if quiz.question.answer == quiz.response
      redirect_to '/you_win'
    else
      redirect_to '/you_fail'
    end
  end

  def win
  end

  def fail
  end
end
