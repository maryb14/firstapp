class AddBoolToCategory < ActiveRecord::Migration
  def change
  	add_column :categories, :is_grammar_categ, :boolean
  end
end
