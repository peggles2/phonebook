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
        format.html { redirect_to "/contact/show_contacts"}
      end
    end 
  end

  def update_contact
    params.permit!
    contact_id = params[:id]
    
    @contact   = Contact.find(contact_id)
    contact   = { :first_name   => params[:first_name],
                  :last_name    => params[:last_name],
                  :phone_number => params[:phone_number],
                  :address      => params[:address] }
    if @contact.update(contact)
      respond_to do |format|
        flash[:success] = "Your contact was successfully updated"
        format.html { redirect_to "/contact/show_contacts"}
      end
    else 
        flash[:error] = "Your contact was not saved"
    end 
  end
  
  def show_contact
    respond_to do |format|
      format.html { redirect_to "/contact/show_contacts" }
    end
  end

  def delete_contact
    begin
      Contact.find(params[:contact_id]).destroy
      msg  =  "Your contact was successfully deleted"
    rescue => e
      flash[:error]   =   "Sorry there was a problem. Unable to delete your contact.  #{e}"
      Rails.logger.error "Sorry there was an error #{e}"
    end
    respond_to do |format|
      flash[:success] = msg if msg.present?
      format.html { render :template => "/contact/show_contacts" }
    end
  end


  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number, :address)
  end
  
end
