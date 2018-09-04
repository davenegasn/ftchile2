class Comuna < ApplicationRecord
	has_many :clientes
	has_many :suppliers

	scope :sorted, lambda { order("id ASC") }
end
