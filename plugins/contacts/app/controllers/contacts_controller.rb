class ContactsController < ApplicationController


  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
    @users = User.all
    @projects = Project.all
  end




  def new
  @contact = Contact.new
  @users = User.all
  @projects = Project.all
  end



  def edit
  @contact = Contact.find(params[:id])
  @users = User.all
  @projects = Project.all
  end


 def create
   @contact = Contact.new(contact_params)
   @users = User.all
   @projects = Project.all
    if @contact.save
      redirect_to @contact, notice: 'New contact was successfully created!'
    else
      render :new
    end

 end


  def show
 @contact = Contact.find(params[:id])
 @users = User.all
 @projects = Project.all
  end


def update
   if @contact.update(contact_params)
      redirect_to @contact, notice: 'Contact was successfully updated.'
    else
      render :edit
    end
end




  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_url, notice: 'Contact was successfully destroyed.'
  end

 private

    def set_contact
      @contact = Contact.find(params[:id])
    end


  def contact_params
    params.require(:contact).permit(:email, :phone, :phone_add, :skype,:web, :address, :city, :region, :country, :active, :user_id, :project_id)
  end
end


