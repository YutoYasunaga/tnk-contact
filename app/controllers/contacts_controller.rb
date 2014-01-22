class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    @contact.save
    @contact.city_ids.each do |c|
      @city = City.where("id = ?", c).take
      @branch = Branch.where("id = ?", @city.branch_id).take
      @text = String.new
      @text = @text.concat(@branch.email)
    end
    ContactMailer.test_mail(@text)
    redirect_to controller: "home", action: "done"
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :email_confirmation, {:city_ids => []}, :description)
  end

end
