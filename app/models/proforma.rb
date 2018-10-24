class Proforma < ApplicationRecord
	has_many :article_proformas
	has_many :articles, :through => :article_proformas
	has_one :supplier, class_name: "Supplier", foreign_key: "supplier_id"
	has_one :cliente, class_name: "Cliente", foreign_key: "clientes_id"
end
