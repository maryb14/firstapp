class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.integer :category_id
    	t.string :name
    end
  end
end
