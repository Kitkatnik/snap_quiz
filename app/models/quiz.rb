class Quiz < ActiveRecord::Base
  belongs_to :question
  belongs_to :student
end