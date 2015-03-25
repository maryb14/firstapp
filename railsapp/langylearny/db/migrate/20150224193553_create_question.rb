class CreateQuestion < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :content
    	t.string :answer
    	t.integer :grammar_category_id
    	t.integer :vocabulary_category_id
    	t.timestamps
    end
  end
end
