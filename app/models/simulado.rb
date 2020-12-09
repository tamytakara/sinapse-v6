class Simulado < ApplicationRecord
    belongs_to :vestibulando
    belongs_to :prova 
    has_many :answers, :dependent => :delete_all
end
