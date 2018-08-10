class Course < ApplicationRecord
  has_many :disciplines, dependent: :destroy
  has_many :enrollments, dependent: :destroy
end
