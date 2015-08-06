class AddRightAnswerToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :right_answer, :integer
  end
end
