class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:success] = 'Thank you for contacting us! We\'ll write back ASAP!'
			render :new
		else
			flash.now[:error] = 'Oh no! It looks like you made a mistake somewhere. Please try again.'
			render :new
		end
	end
end

