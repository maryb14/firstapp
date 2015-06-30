class CreateCategItem < ActiveRecord::Migration
  def change
    create_table :category_items do |t|
    	t.string :image
    	t.text :content
    	t.integer :category_id
    end
  end
end
