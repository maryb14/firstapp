class AddCategoryToQuestion < ActiveRecord::Migration
  def change
  	rename_column :questions, :grammar_category_id, :category_id
  	remove_column :questions, :vocabulary_category_id
  end
end
