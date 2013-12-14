class DefaultResponseValue < ActiveRecord::Migration
  def change
  	change_column_default :quizzes, :response, '(No Response)'
  end
end
