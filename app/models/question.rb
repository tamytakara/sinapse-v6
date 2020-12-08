class Question < ApplicationRecord
    extend Enumerize
  
    validates :desc, presence: true, length: { minimum: 3 }
    validates :gabarito, presence: :true
    enumerize :type, in: [:alternativa, :dissertativa], default: :alternativa

    belongs_to :prova
    has_many :answers
    has_many :alternativas
    has_and_belongs_to_many :materias
    has_many :resolutions
end
