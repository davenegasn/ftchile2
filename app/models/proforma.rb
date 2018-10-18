class Proforma < ApplicationRecord
	has_many :article_proformas
	has_many :articles, :through => :article_proformas
	belongs_to :supplier
	belongs_to :cliente, class_name: "Cliente", foreign_key: "clientes_id"
end
