class ChangeTheNameOfCategories < ActiveRecord::Migration
  def change
  	rename_table :grammar_categories, :categories
  end
end
