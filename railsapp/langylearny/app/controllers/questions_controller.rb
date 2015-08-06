class QuestionsController <ApplicationController
	
	before_action :require_user

	def index
		@questions = Question.where(category_id: session[:category_id])
	end

end