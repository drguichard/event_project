class Event < ApplicationRecord


	validates :start_date, presence: true
	validates :duration, presence: true
	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true
	validates :location, presence: true


	has_many :attendances
  has_many :users, through: :attendances


	def end_date

		require 'date'
		d = self.start_date
		puts d
		#f =  d.year.to_s +  "-"  + d.month.to_s + "-" + d.day.to_s
		f = DateTime.new(d.year, d.month, d.day + self.duration)
		return f
	end
end
