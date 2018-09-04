class Article < ApplicationRecord
	belongs_to :suppliers, optional: true
end
