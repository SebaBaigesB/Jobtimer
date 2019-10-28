class BannerUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true

  process convert: 'jpg'

  version :thumnail do
    resize_to_fit 256, 256
  end
end
