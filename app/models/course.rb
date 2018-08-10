class Course < ApplicationRecord
  has_many :disciplines
  has_many :enrollments
end
