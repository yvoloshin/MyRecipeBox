class Photo < ActiveRecord::Base
	belongs_to :recipe
	mount_uploader :picture, PictureUploader
end
