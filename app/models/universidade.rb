class Universidade < ApplicationRecord
    validates :name, presence: true, length: { minimum: 6 }

    has_and_belongs_to_many :courses, :dependent => :delete_all
    before_destroy {|universidade| universidade.courses.clear}
    has_and_belongs_to_many :admission_exams, :dependent => :delete_all
    before_destroy {|universidade| universidade.admission_exams.clear}
end
