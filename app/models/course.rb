class Course < ApplicationRecord
    extend Enumerize

    validates :name, presence: true
    enumerize :area, in: [:biological, :exact, :human], default: :exact

    has_and_belongs_to_many :universidades
    before_destroy {|course| course.universidades.clear}
    has_many :ambitions, :dependent => :delete_all
end
