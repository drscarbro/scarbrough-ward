class RsvpController < ApplicationController
  def index
    @rsvp_welcome = "Welcome to the Scarbrough-Ward RSVP Page"
    @all_rsvps = Rsvp.all
  end
  
  def new
    @rsvp = Rsvp.new
  end
  
  def create
    @rsvp = Rsvp.new(page_params)
    if @rsvp.save
      redirect_to '/rsvp'
    else
      render 'new'
    end
  end
    
  private
  def page_params
    params.require(:firstname)
    params.require(:lastname)
    params.require(:party_size)
    params.permit(:email, :address)
  end
  
end