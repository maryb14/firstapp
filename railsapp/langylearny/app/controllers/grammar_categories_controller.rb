class GrammarCategoriesController <ApplicationController

	before_action :require_user

	def index
		@grammar_categories = Category.grammar_categ
	end

	def show
		@grammar_category = Category.grammar_categ.find(params[:id])

		session[:category_id] = @grammar_category.id
	end

end