class VocabularyCategoriesController <ApplicationController

	before_action :require_user

	def index
		@vocabulary_categories=Category.vocabulary_categ
	end

	def show
		@vocabulary_category=Category.vocabulary_categ.find(params[:id])

		@category_items=@vocabulary_category.category_items
	end

end