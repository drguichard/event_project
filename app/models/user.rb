class User < ApplicationRecord


	has_many :appointments
  has_many :patients, through: :appointments

end
