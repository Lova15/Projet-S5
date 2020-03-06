class Stroll < ApplicationRecord
	has_many :dogsitters
	has_many :dogs
	has_one :city
end
