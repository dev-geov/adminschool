class Professor < ApplicationRecord
  has_many :disciplines, dependent: :destroy
end
