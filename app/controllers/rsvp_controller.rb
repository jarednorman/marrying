class RsvpController < ApplicationController
  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      redirect_to @rsvp
    else
      render :new
    end
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:name,
                                 :email,
                                 :plus_one,
                                 :plus_one_reason,
                                 :coming)
  end
end
