class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thanks for sending a message! I will get back to you soon!'
    else
      flash.now[:error] = 'Error Sending Message. Try again?'
      render :new
    end
  end
end
