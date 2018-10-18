class Image < ApplicationRecord
  mount_uploader :uploader, ImageUploader
end
