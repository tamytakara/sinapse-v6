class Resolution < ApplicationRecord
    validates :desc, presence: true, length: { minimum: 6 }    

    belongs_to :question
    has_many :votos, :dependent => :delete_all
    belongs_to :universitario
end
