class Supplier < ApplicationRecord
	attr_accessor :image
	belongs_to :comuna
	has_many :articles
	mount_uploader :image, ImageUploader
	has_many :proformas, through: :proformas 
	
end
