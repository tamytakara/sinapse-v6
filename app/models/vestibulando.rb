class Vestibulando < User
    type = "Vestibulando"
    has_many :ambitions, :dependent => :delete_all
    has_many :simulados, :dependent => :delete_all

    def vestibulando_infos
        {
            username: self.username,
            email: self.email,
            vestibulares: self.vestibulares_info(self.ambitions)
        }
    end

    def vestibulares_info(ambitions)
        ambitions.map do |a|
            {
            admission_exam_id: a.admission_exam.id,
            admission_exam_name: a.admission_exam.name,
            admission_exam_selecionada: true
            }
        end
    end
end
