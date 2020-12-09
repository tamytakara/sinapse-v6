class AdmissionExam < ApplicationRecord
    has_and_belongs_to_many :universidades
    before_destroy {|admission_exam| admission_exam.universidades.clear}
    has_and_belongs_to_many :universitarios
    before_destroy {|admission_exam| admission_exam.universitarios.clear}
    has_many :ambitions, :dependent => :delete_all
    has_many :provas, :dependent => :delete_all

    def vestibular_info
        {
            admission_exam_id: self.id,
            name: self.name,
            desc: self.desc
        }
    end
end
