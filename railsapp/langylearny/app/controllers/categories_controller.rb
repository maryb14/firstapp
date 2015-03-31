class CategoriesController <ApplicationController

	before_action :require_user

	def index
		@categories=Category.grammar_categ
	end

	def show
		@category=Category.grammar_categ.find(params[:id])
	end

end