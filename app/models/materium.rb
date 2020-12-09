class Materium < ApplicationRecord
    has_and_belongs_to_many :questions, :dependent => :delete_all
    has_and_belongs_to_many :universitarios, :dependent => :delete_all
end
