class Voto < ActiveRecord::Base    
    belongs_to :user
    belongs_to :resolution
end