class Prova < ApplicationRecord
    belongs_to :admission_exam
    has_and_belongs_to_many :simulados
    has_many :questions
end
