class Photo < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	#validates_processing_of :image
	validate :image_size_validation

	private
		def image_size_validation
			errors[:image] << "Debería ser menos de 20M" if image.size > 20.megabytes
		end
end
