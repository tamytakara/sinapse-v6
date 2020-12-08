class Universidade < ApplicationRecord
    validates :name, presence: true, length: { minimum: 6 }

    has_and_belongs_to_many :courses
    has_and_belongs_to_many :admission_exams
end
