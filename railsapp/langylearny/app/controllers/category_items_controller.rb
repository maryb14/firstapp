class CategoryItemsController <ApplicationController

	before_action :require_user

	def show
		@category_item = CategoryItem.find(params[:id])
		render partial: "modal", layout: false
	end

end