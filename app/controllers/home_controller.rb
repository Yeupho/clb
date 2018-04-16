class HomeController < ApplicationController
  def index
    @reservations = Reservation.all
  end
  # Reservation.where(:reservestatusid == 3).where(updated_at: Date.today.beginning_of_week .. Date.today.end_of_week ).where('updated_at > ?', :created_at).count(:reservestatusid)
end