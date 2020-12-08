class AdmissionExam < ApplicationRecord
    has_and_belongs_to_many :universidades
    has_many :ambitions
    has_and_belongs_to_many :universitarios
    has_many :provas

    def vestibular_info
        {
            admission_exam_id: self.id,
            name: self.name,
            desc: self.desc
        }
    end
end
