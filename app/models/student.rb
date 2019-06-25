class Student < ApplicationRecord
    # has_and_belongs_to_many :teachers
    has_many :subjects
    has_many :teachers, through: :subjects
end
