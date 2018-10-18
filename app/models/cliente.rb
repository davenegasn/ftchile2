class Cliente < ApplicationRecord
	belongs_to :comuna
	has_many :proformas
	scope :sorted, lambda { order("id ASC") }

	def name_with_initial
    	"#{nombre} #{apellido_paterno} #{apellido_materno}".upcase
  	end

end
