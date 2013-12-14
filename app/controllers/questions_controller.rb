class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)

    if @question.valid?
      @question.save
      redirect_to question_url(@question)
    else
      flash[:error] = @question.errors.full_messages
      redirect_to '/questions/new'
    end
  end

  protected

  def question_params
    params.require(:question).permit(:body, :answer)
  end
end
