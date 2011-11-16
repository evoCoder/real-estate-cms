class Flat < ActiveRecord::Base
   attr_accessible :image
   belongs_to :house
   belongs_to :category
   mount_uploader :image, ImageUploader
end
