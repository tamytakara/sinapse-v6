class Prova < ApplicationRecord
    belongs_to :admission_exam
    has_many :simulados
    before_destroy {|prova| prova.simulados.clear}
    has_many :questions, :dependent => :delete_all
end
