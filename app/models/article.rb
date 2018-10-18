class Article < ApplicationRecord
	belongs_to :suppliers, optional: true
	has_many :article_proformas
	has_many :proformas, :through => :article_proformas
end
