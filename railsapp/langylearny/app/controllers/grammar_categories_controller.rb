class GrammarCategoriesController <ApplicationController

	def index
		@categories=GrammarCategory.all
	end

	def show
		@category=GrammarCategory.find(params[:id])
	end

end