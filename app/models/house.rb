class House < ActiveRecord::Base
   #belongs_to :pages
   attr_accessible :image
   has_many   :flats, :dependent => :destroy
   mount_uploader :image, ImageUploader
end
