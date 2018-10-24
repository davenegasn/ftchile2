class Proforma < ApplicationRecord
	has_many :article_proformas
	has_many :articles, :through => :article_proformas
	belongs_to :supplier
	belongs_to :cliente, foreign_key: "cliente_id"
end
