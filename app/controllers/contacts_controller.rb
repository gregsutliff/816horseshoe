class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
			flash.now[:notice] = 'Thank you for contacting us! We\'ll write back ASAP!'
			render :new
		else
			flash.now[:error] = 'Cannot Send Message'
			render :new
		end
	end
end

