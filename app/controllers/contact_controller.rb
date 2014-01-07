class ContactController < ApplicationController
	def index

	end

	def create
		comment = params[:comment]
		Contact.create!(message: comment)
		respond_to do |format|
			format.html { redirect_to contact_url, notice: 'Your comment was received.' }
		end
	end

	private

	def permitted_params
		params.permit(:comment)
	end


end
