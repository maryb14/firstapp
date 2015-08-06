class RemoveRightAnswerFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :right_answer, :string
  end
end
