class Course < ApplicationRecord
  has_many :slots
  belongs_to :student
end
