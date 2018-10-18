class ArticleProforma < ApplicationRecord
	belongs_to :article, class_name: "Article", optional: true
	belongs_to :proforma, class_name: "Proforma", optional: true
	
end
