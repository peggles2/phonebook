class ContactController < ApplicationController

  def index
  end

  def new_contact
    @contact = Contact.new
  end

  def create_contact
    params.permit!
    @contact = Contact.new(params[:contact])
    if @contact.save
      respond_to do |format|
        flash[:success] =  "Your contact was successfully saved"
        format.html { redirect_to "/contact/new_contact" }
      end
    end 
  end

  def show_contact
    respond_to do |format|
      format.html { redirect_to "/contact/show_contacts" }
    end
  end

  def delete_contact
    Contact.find(params[:contact_id]).destroy
    respond_to do |format|
      format.html { redirect_to "/contact/show_contacts" }
    end
  end


  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number, :address)
  end
end
