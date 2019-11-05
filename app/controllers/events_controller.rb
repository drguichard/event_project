class EventsController < ApplicationController

	def index
		@events_array = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	
end
