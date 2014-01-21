class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to controller: "home", action: "done"
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, {:city_ids => []}, :description)
  end

end
