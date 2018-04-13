class HomesController < ApplicationController
  def index
    @reservations = Reservation.all
    @calendar = Home.calendar
  end

end
