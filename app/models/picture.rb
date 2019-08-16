class Picture < ApplicationRecord
  belongs_to :catcher, optional: true
  belongs_to :story, optional: true
  belongs_to :destination, optional: true


  mount_uploader :photo, PhotoUploader
end
