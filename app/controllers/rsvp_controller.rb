class RsvpController < ApplicationController
  def index
    @rsvp_welcome = "Welcome to our RSVP Page. We look forward to seeing you at our Wedding."
    @all_rsvps = Rsvp.all
  # end
  
  # def new
    @rsvp = Rsvp.new
  end
  
  def create
    @rsvp = Rsvp.new(page_params)
    if @rsvp.save
      redirect_to '/rsvp'
    else
      render 'index'
    end
  end
    
  private
  def page_params
    params.require(:rsvp).permit(:firstname, :lastname, :party_size, :email, :address)
  end
end