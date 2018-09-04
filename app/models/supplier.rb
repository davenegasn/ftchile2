class Supplier < ApplicationRecord
	belongs_to :comuna
	has_many :articles
end
