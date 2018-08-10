class Discipline < ApplicationRecord
  belongs_to :professor
  belongs_to :course
  validates :title, :description, :hours, :course, :professor, presence: true
end
