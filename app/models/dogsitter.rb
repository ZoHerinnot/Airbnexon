class Dogsitter < ApplicationRecord
	has_many :strolls
	has_many :dogs, through: :stroll
	belongs_to :city
end
