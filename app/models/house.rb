class House < ActiveRecord::Base
   belongs_to :pages
   has_many   :flats, :dependent => :destroy
end
