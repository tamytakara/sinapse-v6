class Universitario < User
    type = "Universitario"
    has_and_belongs_to_many :admission_exams
    has_and_belongs_to_many :materias
    has_many :resolutions
    #def universitario_infos
    #    {
    #        username: self.username,
    #        email: self.email
    #        vestibulares: self.vestibulares_info(self.admission_exams)
    #    }
    #end

    #def vestibulares_info(admission_exam)
    #    admission_exam.map do |a|
    #        {
    #        admission_exam_id: a.id,
    #        admission_exam_name: a.name,
    #        admission_exam_selecionada: true
    #        }
    #    end
    #end
end