class Hotel < ApplicationRecord
	mount_uploader :picture, PictureUploader
	belongs_to :prefecture
	has_many :reviews
end
