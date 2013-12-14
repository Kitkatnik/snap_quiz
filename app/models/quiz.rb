class Quiz < ActiveRecord::Base
  after_create :send_quiz

  belongs_to :question
  belongs_to :student

  private

  def send_quiz
    QuizMailer.snap_quiz(self).deliver
  end
end
