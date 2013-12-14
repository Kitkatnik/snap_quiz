class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.belongs_to :question, index: true
      t.belongs_to :student, index: true
      t.string :response

      t.timestamps
    end
  end
end
