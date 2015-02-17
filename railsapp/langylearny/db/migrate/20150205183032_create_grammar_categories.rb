class CreateGrammarCategories < ActiveRecord::Migration
  def change
    create_table :grammar_categories do |t|
    	t.string :name
    	t.text :content
    	t.timestamps
    end
  end
end
