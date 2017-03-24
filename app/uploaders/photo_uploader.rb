class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :standard do
    resize_to_fit 800, 600
  end

  version :medium do
    cloudinary_transformation width: 360, height: 175, crop: :thumb, gravity: :face
  end
end
