class Article < ApplicationRecord
	belongs_to :suppliers, optional: true
	has_many :article_proformas, dependent: :delete_all
	has_many :proformas, :through => :article_proformas
end
