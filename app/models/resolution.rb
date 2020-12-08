class Resolution < ApplicationRecord
    validates :desc, presence: true, length: { minimum: 6 }    

    belongs_to :question
    has_many :votos
    belongs_to :universitario
end
