class AddResultToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :result, :string, default: "no answer"
  end
end
