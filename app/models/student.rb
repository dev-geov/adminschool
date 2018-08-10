class Student < ApplicationRecord
    validates :fullname, presence: true
end
