class ContactsController < ApplicationController

  def show
    @contact = Contact.find(params["id"])
  end

  def new
    @contact = Contact.new
    @company = Company.find(params["company_id"])
    @contact.company_id = @company.id
  end

  def create
    @contact = Contact.new(params["contact"])
    @contact.save
    redirect_to "/companies/#{@contact.company.id}"
  end

end