class AddTitleToCategoryItems < ActiveRecord::Migration
  def change
  	add_column :category_items, :title, :string
  end
end
