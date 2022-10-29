class FlightsController < ApplicationController

  def index
    @departing_flights = Flight.all.map {|f| [f.departure_airport.airport_code]}.uniq
    @arriving_flights = Flight.all.map {|f| [f.arrival_airport.airport_code]}.uniq
    @date_options = Flight.all.map { |f| f.takeoff_date }.uniq
    @time_options = Flight.all.map { |f| f.takeoff_time }.uniq

  
    if params[:departure_airport] != params[:arrival_airport] 
      @departure_airport = Airport.where("airport_code = ?", params[:departure_airport]).first.id
      @arrival_airport = Airport.where("airport_code = ?", params[:arrival_airport]).first.id
      @search_results = Flight.where("departure_airport_id = ? AND arrival_airport_id = ? AND takeoff_date = ?", @departure_airport, @arrival_airport, params[:date])
    end
  end
end