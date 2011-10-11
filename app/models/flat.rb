class Flat < ActiveRecord::Base
   belongs_to :house
   belongs_to :category
end
