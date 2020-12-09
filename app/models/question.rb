class Question < ApplicationRecord
    extend Enumerize
  
    validates :desc, presence: true, length: { minimum: 3 }
    validates :gabarito, presence: :true
    enumerize :type, in: [:alternativa, :dissertativa], default: :alternativa

    belongs_to :prova
    has_many :answers, :dependent => :delete_all
    has_many :alternativas, :dependent => :delete_all
    has_many :resolutions, :dependent => :delete_all
    has_and_belongs_to_many :materias
    before_destroy {|question| question.materias.clear}
end
