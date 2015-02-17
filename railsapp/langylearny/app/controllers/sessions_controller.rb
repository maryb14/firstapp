class SessionsController < ApplicationController

	def new
		@user=User.new
	end

	def create

		@user=User.find_by(user_name: params[:session][:user_name])

		if @user && @user.authenticate(params[:session][:password])

			session[:user_id]=@user.id
			redirect_to grammar_categories_url, notice: "You've been successfully logged in"

		else
			flash.now[:error]='Invalid username/password'
			render 'new'
		end
	end

	def destroy
		session.delete(:user_id)
		current_user = nil
		redirect_to root_url, notice: "You've been successfully logged out"
	end
end