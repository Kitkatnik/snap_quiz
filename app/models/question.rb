class Question < ActiveRecord::Base
	has_many :quizzes
end
