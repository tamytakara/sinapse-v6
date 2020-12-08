class Ambition < ApplicationRecord
    VALID_FORMAT_REGEX = /\d{1}\.?\d{4}/
    validates :data, presence: true, length: { maximum: 6 }, format: { with: VALID_FORMAT_REGEX }

    belongs_to :course
    belongs_to :vestibulando
    belongs_to :admission_exam
end
