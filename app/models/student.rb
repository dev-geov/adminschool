class Student < ApplicationRecord
    validates :fullname, presence: true
    has_one :enrollment
end
