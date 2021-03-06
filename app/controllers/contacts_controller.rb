class ContactsController < ApplicationController
  add_breadcrumb 'Home', :root_path
  add_breadcrumb 'Contact'
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
    else
      render :new, danger: 'Cannot send message.'
    end
  end
end
