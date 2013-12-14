class QuizMailer < ActionMailer::Base
  default from: "from@example.com"

  def snap_quiz(quiz)
    @quiz = quiz
    @url = "http://www.snapquiz.co/quiz/#{@quiz.id}"
    mail(to: @quiz.student.email, subject: 'Answer this, yo!')
  end
end
