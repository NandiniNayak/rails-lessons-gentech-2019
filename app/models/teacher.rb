class Teacher < ApplicationRecord
    # has_and_belongs_to_many :students
    has_many :subjects
    has_many :students, :through => :subjects
    # :through => :subjects
    # through: :subjects
end
