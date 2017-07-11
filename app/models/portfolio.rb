class Portfolio < ApplicationRecord
<<<<<<< HEAD
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image
  
 def self.fmab
  where(subtitle: "FMAB")
 end
  
 def self.ylia
  where(subtitle: "YLIA")
 end
  
 after_initialize :set_defaults
 
 def set_defaults
   self.main_image ||= "http://placehold.it/600x400"
   self.thumb_image ||="https://placehold.it/350x200"
 end
=======
  validates_presence_of :title, :body, :main_image, :thumb_image
>>>>>>> data-feature
end

