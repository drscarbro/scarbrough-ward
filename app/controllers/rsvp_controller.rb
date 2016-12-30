class RsvpController < ApplicationController
  def index
    @rsvp_welcome = "Welcome to the Scarbrough-Ward RSVP Page"
    @all_rsvps = Rsvp.all
  end
end
