class EventsController < ApplicationController

	def index
		@events_array = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

	def create

		post_params = params.require(:event).permit(:title, :description, :location, :price, :start_date, :duration)
		post_paramd = params.require(:start_date).permit(:year, :month, :day)
		post_params[:start_date] = post_paramd[:year] + '-' + post_paramd[:month] + '-' + post_paramd[:day] 
			@event = Event.new(post_params)
		if @event.save then
			Attendance.create(user: current_user, event: @event)
			redirect_to root_path
		else
			render 'new'
		end
	end

	
end
