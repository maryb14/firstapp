class AddRightAnswer3ToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :right_answer, :string
  end
end
