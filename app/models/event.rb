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
		return "edeeded"
	end
end
